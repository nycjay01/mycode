# 
resource "azurerm_sql_server" "dis-prod-rg-incentives__dis-prod-db-incentives-west" {
  name                         = "dis-prod-db-incentives-west"
  location                     = "westus"
  resource_group_name          = "dis-prod-rg-incentives"
  version                      = "12.0"
  administrator_login          = "TcfIncentivesPRD_SA-west"
  administrator_login_password = "K4DW3S35RT129qd"
}
