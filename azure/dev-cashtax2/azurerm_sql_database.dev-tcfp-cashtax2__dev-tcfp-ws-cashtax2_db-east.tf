# 
resource "azurerm_sql_database" "dis-prod-cashtax2__dis-prod-ws-cashtax2_db-east" {
  name                             = "dis-prod-ws-cashtax2_db-east"
  location                         = "eastus"
  resource_group_name              = "dis-prod-cashtax2"
  server_name                      = "dis-prod-db-cashtax2-east"
  collation                        = "SQL_Latin1_General_CP1_CI_AS"
  edition                          = "Standard"
  requested_service_objective_name = "S0"
}
