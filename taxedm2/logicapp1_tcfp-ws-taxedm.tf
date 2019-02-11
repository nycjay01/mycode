resource "azurerm_application_insights" "taxedm2" {
  name                = "dis-prod-ws-taxedm2"
  location            = "eastus"
  resource_group_name = "dis-prod-rg-taxedm2"
  application_type    = "Web"
}

//output "instrumentation_key" {
//  value = "${azurerm_application_insights.taxedm2.instrumentation_key}"
//}
//
//output "app_id" {
//  value = "${azurerm_application_insights.taxedm2.app_id}"
//}
//