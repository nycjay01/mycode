# 
resource "azurerm_sql_database" "dis-prod-cashtax2__dis-prod-ws-cashtax2_db-west" {
  name                             = "dis-prod-ws-cashtax2_db-west"
  location                         = "westus"
  resource_group_name              = "dis-prod-cashtax2"
  server_name                      = "dis-prod-db-cashtax2-west"
  collation                        = "SQL_Latin1_General_CP1_CI_AS"
  edition                          = "Standard"
  requested_service_objective_name = "S0"
}
