# File generated by az2tf see https://github.com/andyt530/az2tf
resource "azurerm_app_service" "dis-prod-rg-incentives__dis-prod-ws-incentives" {
  name                = "dis-prod-ws-incentives"
  location            = "eastus"
  resource_group_name = "dis-prod-rg-incentives"
  app_service_plan_id = "/subscriptions/dc3c9354-6ca9-41a5-9559-479fbccf3217/resourceGroups/dis-prod-shared-resources-east/providers/Microsoft.Web/serverFarms/dis-prod-appsrv-plan-east"
}