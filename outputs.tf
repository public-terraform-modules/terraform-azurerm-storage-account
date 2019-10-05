output "storage_account_name" {
  value = "${azurerm_storage_account.sa.name}"
}

output "storage_account_id" {
  value = "${azurerm_storage_account.sa.id}"
}

output "storage_account_primary_blob_endpoint" {
  value = "${azurerm_storage_account.sa.primary_blob_endpoint}"
}

