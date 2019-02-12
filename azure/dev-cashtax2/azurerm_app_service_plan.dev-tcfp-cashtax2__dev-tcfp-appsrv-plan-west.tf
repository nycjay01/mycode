# 
resource "azurerm_app_service_plan" "dis-prod-cashtax2__dis-prod-appsrv-plan-west" {
  name                = "dis-prod-appsrv-plan-west"
  location            = "West US"
  resource_group_name = "dis-prod-cashtax2"
  kind                = "Windows"

  sku {
    tier = "Standard"
    size = "S1"
  }
}
