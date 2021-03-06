# 
resource "azurerm_storage_account" "dis-prod-rg-taxedm2__azuretaxstg1" {
  name                      = "disprodazuretaxstg1"
  location                  = "westus"
  resource_group_name       = "dis-prod-rg-taxedm2"
  account_tier              = "Standard"
  account_kind              = "Storage"
  account_replication_type  = "LRS"
  enable_blob_encryption    = "true"
  enable_file_encryption    = "true"
  enable_https_traffic_only = "false"
  account_encryption_source = "Microsoft.Storage"
}
