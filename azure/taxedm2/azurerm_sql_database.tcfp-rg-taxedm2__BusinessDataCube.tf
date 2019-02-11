resource "azurerm_sql_database" "dis-prod-rg-taxedm2__BusinessDataCube2" {
  name                             = "BusinessDataCube"
  location                         = "westus"
  resource_group_name              = "dis-prod-rg-taxedm2"
  server_name                      = "dis-prod-db-taxsql-grw"
  collation                        = "SQL_Latin1_General_CP1_CI_AS"
  edition                          = "Premium"
  requested_service_objective_name = "P1"
}
