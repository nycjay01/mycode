# 
resource "azurerm_sql_database" "dis-prod-rg-incentives__dis-prod-ws-incentives_db" {
  name                             = "dis-prod-ws-incentives_db"
  location                         = "westus"
  resource_group_name              = "dis-prod-rg-incentives"
  server_name                      = "dis-prod-db-incentives-west"
  collation                        = "SQL_Latin1_General_CP1_CI_AS"
  edition                          = "Standard"
  requested_service_objective_name = "S0"
}
