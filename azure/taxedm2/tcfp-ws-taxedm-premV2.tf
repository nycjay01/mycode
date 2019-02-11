resource "azurerm_application_insights" "taxedm2v2" {
  name                = "dis-prod-ws-taxedm-V2"
  location            = "eastus"
  resource_group_name = "dis-prod-rg-taxedm2"
  application_type    = "Web"
}

resource "azurerm_application_insights" "taxedmpremv2" {
  name                = "dis-prod-ws-taxedm-premV2"
  location            = "eastus"
  resource_group_name = "dis-prod-rg-taxedm2"
  application_type    = "Web"
}



output "instrumentation_key" {
  value = "${azurerm_application_insights.taxedmpremv2.instrumentation_key}"
}

output "app_id" {
  value = "${azurerm_application_insights.taxedmpremv2.app_id}"
}
