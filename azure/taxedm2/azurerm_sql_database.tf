resource "azurerm_sql_database" "dis-prod-rg-taxedm2__BusinessDataCube" {
  name                             = "BusinessDataCubetax"
  location                         = "eastus"
  resource_group_name              = "dis-prod-rg-taxedm2"
  server_name                      = "dis-prod-db-taxsql"
  collation                        = "SQL_Latin1_General_CP1_CI_AS"
  edition                          = "Premium"
  requested_service_objective_name = "P1"
}
