# 
resource "azurerm_sql_server" "dis-prod-rg-taxedm2__dis-prod-db-taxsql-grw" {
  name                         = "dis-prod-db-taxsql-grw"
  location                     = "westus"
  resource_group_name          = "dis-prod-rg-taxedm2"
  version                      = "12.0"
  administrator_login          = "BusinessDataCubeAdmin"
  administrator_login_password = "OP32Wpw7ger88ec"
}
