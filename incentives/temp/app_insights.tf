resource "azurerm_application_insights" "incentives" {
  name                = "dis-prod-appinsights-incentives"
  location            = "eastus"
  resource_group_name = "dis-prod-rg-incentives"
  application_type    = "Web"
}

output "instrumentation_key" {
  value = "${azurerm_application_insights.incentives.instrumentation_key}"
}

output "app_id" {
  value = "${azurerm_application_insights.incentives.app_id}"
}