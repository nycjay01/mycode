#Variables
variable "rsg"         { default = "ffe-terraformpoc2" }
variable "location"    { default = "West US" }
variable "add-space"   { default = "10.89.200.0/24" }
variable "add-subnet1" { default = "10.89.200.0/24" }

variable "environment" { default = "Production"}

provider "azurerm" {
  alias           = "subscription1"
  subscription_id = "11111111-1111-1111-1111-111111111111"
                     
}

provider "azurerm" {
  alias           = "subscription2"
  subscription_id = "22222222-2222-2222-2222-222222222222"
                     
}


# Build the Resource Group 
resource "azurerm_resource_group" "rsg" {
  name     = "${var.rsg}"
  location = "${var.location}"
}

# Build the Virtual Network
resource "azurerm_virtual_network" "vnet" {
  provider            = "azurerm.subscription1"
  name                = "${var.rsg}-vnet"
  address_space       = ["${var.add-space}"]
  location            = "${var.location}"
  resource_group_name = "${azurerm_resource_group.rsg.name}"
  dns_servers         = ["10.215.12.18"]
  dns_servers         = ["10.136.255.140"]
}

# Build subnet
resource "azurerm_subnet" "subnet1" {
  name                 = "subnet1"
  resource_group_name  = "${azurerm_resource_group.rsg.name}"
  virtual_network_name = "${azurerm_virtual_network.vnet.name}"
  address_prefix       = "${var.add-subnet1}"
}

#Build Peer To Main vnet
resource "azurerm_virtual_network_peering" "spoketohub" {
  provider                     = "azurerm.subscription1"
  name                         = "rsg-ffeterraformpoc2PEERtonet-ffeuswpoc01t"
  resource_group_name          = "ffe-terraformpoc2"
  virtual_network_name         = "ffe-terraformpoc2-vnet"
  remote_virtual_network_id    = "/subscriptions/11111111-1111-1111-1111-111111111111/resourceGroups/rsg-ffeuswpoc01t/providers/Microsoft.Network/virtualNetworks/net-ffeuswpoc01t"
  allow_virtual_network_access = true
  allow_forwarded_traffic      = false
  allow_gateway_transit        = false
  use_remote_gateways          = true
}


#Build Peer from Main vnet
resource "azurerm_virtual_network_peering" "hubtospoke" {
  provider                     = "azurerm.subscription2"
  name                         = "ffeuswpoc01tPEERtorg-ffeterraformpoc2"
  resource_group_name          = "rsg-ffeuswpoc01t"
  virtual_network_name         = "net-ffeuswpoc01t"
  remote_virtual_network_id    = "/subscriptions/22222222-2222-2222-2222-222222222222/resourceGroups/ffe-terraformpoc2/providers/Micrisoft.Network/virtualNetworks/ffe-terraformpoc2-vnet"
  allow_virtual_network_access = true
  allow_forwarded_traffic      = false
  allow_gateway_transit        = true
  use_remote_gateways          = false
}

# Network Security Group
resource "azurerm_network_security_group" "nsg" {
  name                = "${var.rsg}-nsg"
  location            = "${var.location}"
  resource_group_name = "${azurerm_resource_group.rsg.name}"

  security_rule {
    name                       = "RDP"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = 3389
    destination_port_range     = 3389
    source_address_prefix      = "10.0.0.0/8"
    destination_address_prefix = "*"
  }

  tags {
    environment = "Development"
  }
}


