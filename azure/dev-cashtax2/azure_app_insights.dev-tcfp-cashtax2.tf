resource "azurerm_application_insights" "cashtax2" {
  name                = "dis-prod-ws-cashtax2"
  location            = "eastus"
  resource_group_name = "dis-prod-cashtax2"
  application_type    = "Web"
}

output "instrumentation_key" {
  value = "${azurerm_application_insights.cashtax2.instrumentation_key}"
}

output "app_id" {
  value = "${azurerm_application_insights.cashtax2.app_id}"
}