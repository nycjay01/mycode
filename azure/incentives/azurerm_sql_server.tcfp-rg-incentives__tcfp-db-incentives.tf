# 
resource "azurerm_sql_server" "dis-prod-rg-incentives__dis-prod-db-incentives" {
  name                         = "dis-prod-db-incentives"
  location                     = "eastus"
  resource_group_name          = "dis-prod-rg-incentives"
  version                      = "12.0"
  administrator_login          = "TcfIncentivesPRD_SA"
  administrator_login_password = "K4DW3S35RT129qd"
}
