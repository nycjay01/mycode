# 
resource "azurerm_storage_account" "dis-prod-rg-taxedm2__tcfpstrgtaxedmenc" {
  name                      = "disprodtcfpstrgtaxedmenc"
  location                  = "eastus"
  resource_group_name       = "dis-prod-rg-taxedm2"
  account_tier              = "Standard"
  account_kind              = "Storage"
  account_replication_type  = "RAGRS"
  enable_blob_encryption    = "true"
  enable_file_encryption    = "true"
  enable_https_traffic_only = "false"
  account_encryption_source = "Microsoft.Storage"
}
