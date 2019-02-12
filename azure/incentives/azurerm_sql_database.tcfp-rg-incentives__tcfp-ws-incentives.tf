# 
resource "azurerm_sql_database" "dis-prod-rg-incentives__dis-prod-ws-incentives" {
  name                             = "dis-prod-ws-incentives"
  location                         = "eastus"
  resource_group_name              = "dis-prod-rg-incentives"
  server_name                      = "dis-prod-db-incentives"
  collation                        = "SQL_Latin1_General_CP1_CI_AS"
  edition                          = "Standard"
  requested_service_objective_name = "S0"
}
