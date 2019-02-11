resource "azurerm_application_insights" "disprodimport" {
  name                = "dis-prod-func-taxedm-import-v2"
  location            = "eastus"
  resource_group_name = "dis-prod-rg-taxedm2"
  application_type    = "Web"
}

//output "instrumentation_key" {
//  value = "${azurerm_application_insights.disprodimport.instrumentation_key}"
//}
//
//output "app_id" {
//  value = "${azurerm_application_insights.disprodimport.app_id}"
//}
//