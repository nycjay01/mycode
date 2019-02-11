resource "azurerm_application_insights" "taxedmclone" {
  name                = "dis-prod-ws-taxedm-clone"
  location            = "eastus"
  resource_group_name = "dis-prod-rg-taxedm2"
  application_type    = "Web"
}

//output "instrumentation_key" {
//  value = "${azurerm_application_insights.taxedmclone.instrumentation_key}"
//}
//
//output "app_id" {
//  value = "${azurerm_application_insights.taxedmclone.app_id}"
//}
//