# 
resource "azurerm_traffic_manager_endpoint" "dis-prod-rg-incentives__incentives-east" {
  name                = "incentives-east"
  resource_group_name = "dis-prod-rg-incentives"
  profile_name        = "dis-prod-tm-incentives"
  type                = "azureEndpoints"
  priority            = "1"
  weight              = "1"
  target              = "dis-prod-ws-incentives.azurewebsites.net"
  endpoint_status     = "Enabled"
}
