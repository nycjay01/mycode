# 
resource "azurerm_storage_account" "dis-prod-rg-incentives__dis-prodstrgincentives" {
  name                      = "disprodstrgincentives"
  location                  = "eastus"
  resource_group_name       = "dis-prod-rg-incentives"
  account_tier              = "Standard"
  account_kind              = "StorageV2"
  account_replication_type  = "RAGRS"
  enable_blob_encryption    = "true"
  enable_file_encryption    = "true"
  enable_https_traffic_only = "true"
  account_encryption_source = "Microsoft.Storage"
}
