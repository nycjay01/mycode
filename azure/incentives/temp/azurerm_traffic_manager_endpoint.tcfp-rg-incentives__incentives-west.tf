# 
resource "azurerm_traffic_manager_endpoint" "dis-prod-rg-incentives__incentives-west" {
  name                = "incentives-west"
  resource_group_name = "dis-prod-rg-incentives"
  profile_name        = "dis-prod-tm-incentives"
  type                = "azureEndpoints"
  priority            = "2"
  weight              = "1"
  target              = "dis-prod-ws-incentives-west.azurewebsites.net"
  endpoint_status     = "Disabled"
}
