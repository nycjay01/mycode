# 
resource "azurerm_app_service" "dis-prod-cashtax2__dis-prod-staging-east" {
  name                = "dis-prod-staging-east"
  location            = "East US"
  resource_group_name = "dis-prod-cashtax2"
  app_service_plan_id = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/dis-prod-cashtax2/providers/Microsoft.Web/serverfarms/dis-prod-appsrv-plan-east"
}
