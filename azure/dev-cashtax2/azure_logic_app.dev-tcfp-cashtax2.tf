resource "azurerm_logic_app_workflow" "cashtax2" {
  name                = "dis-prod-la-cashtax-paymentdetailssynch"
  location            = "eastus"
  resource_group_name = "dis-prod-cashtax2"
}