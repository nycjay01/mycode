resource "azurerm_app_service" "rg-spadmin" {
  name                = "dis-prod-ws-spadmin"
  location            = "East US"
  resource_group_name = "dis-prod-rg-spadmin"
  app_service_plan_id = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/dis-prod-shared-resources-east/providers/Microsoft.Web/serverFarms/dis-prod-appsrv-plan-east"
}
