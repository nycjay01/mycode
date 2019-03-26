
resource "azurerm_app_service" "dis-prod-incentives-staging" {
  name                = "dis-prod-incentives-staging"
  location            = "East US"
  resource_group_name = "dis-prod-rg-incentives"
  app_service_plan_id = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/dis-prod-shared-resources-west/providers/Microsoft.Web/serverFarms/dis-prod-appsrv-plan-west"
}
