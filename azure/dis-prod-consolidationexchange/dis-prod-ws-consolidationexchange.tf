resource "azurerm_resource_group" "consolidationexchange-rg" {
  name     = "dis-prod-rg-consolidationexchange"
  location = "eastus"
}


resource "azurerm_app_service" "consolidationexchange" {
  name                = "dis-prod-ws-consolidationexchange"
  location            = "East US"
  resource_group_name = "dis-prod-rg-consolidationexchange"
  app_service_plan_id = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/dis-prod-shared-resources-east/providers/Microsoft.Web/serverFarms/dis-prod-appsrv-plan-east"
}


# 
resource "azurerm_app_service" "consolidationexchangearchiver" {
  name                = "dis-prod-ws-exchangearchiver"
  location            = "East US"
  resource_group_name = "dis-prod-rg-consolidationexchange"
  app_service_plan_id = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/dis-prod-shared-resources-east/providers/Microsoft.Web/serverFarms/dis-prod-appsrv-plan-east"
}


# 
resource "azurerm_app_service" "consolidationexchangewj" {
  name                = "dis-prod-ws-exchangearchiverwj"
  location            = "East US"
  resource_group_name = "dis-prod-rg-consolidationexchange"
  app_service_plan_id = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/dis-prod-shared-resources-east/providers/Microsoft.Web/serverFarms/dis-prod-appsrv-plan-east"
}
