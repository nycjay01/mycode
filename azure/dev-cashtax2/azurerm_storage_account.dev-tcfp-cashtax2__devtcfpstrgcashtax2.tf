# 
resource "azurerm_storage_account" "dis-prod-cashtax2__devtcfpstrgcashtax2" {
  name                      = "devtcfpstrgcashtax2"
  location                  = "eastus"
  resource_group_name       = "dis-prod-cashtax2"
  account_tier              = "Standard"
  account_kind              = "Storage"
  account_replication_type  = "GRS"
  enable_blob_encryption    = "true"
  enable_file_encryption    = "true"
  enable_https_traffic_only = "false"
  account_encryption_source = "Microsoft.Storage"
}
