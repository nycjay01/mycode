
resource "azurerm_app_service" "dis-prod-rg-incentives__dis-prod-ws-incentives" {
  name                = "dis-prod-ws-incentives"
  location            = "eastus"
  resource_group_name = "dis-prod-rg-incentives"
  app_service_plan_id = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/dis-prod-shared-resources-east/providers/Microsoft.Web/serverFarms/dis-prod-appsrv-plan-east"
}
