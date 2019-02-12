# 
resource "azurerm_sql_server" "dis-prod-cashtax2__dis-prod-db-cashtax2-east" {
  name                         = "dis-prod-db-cashtax2-east"
  location                     = "eastus"
  resource_group_name          = "dis-prod-cashtax2"
  version                      = "12.0"
  administrator_login          = "cashtaxadmin"
  administrator_login_password = "null"
}
