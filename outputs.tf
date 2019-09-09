output "storage_account_name" {
  value = "${azurerm_storage_account.blob_sa.name}"
}

output "storage_account_id" {
  value = "${azurerm_storage_account.blob_sa.id}"
}

output "storage_account_primary_blob_endpoint" {
  value = "${azurerm_storage_account.blob_sa.primary_blob_endpoint}"
}

output "storage_container_name" {
  value = "${azurerm_storage_container.blob_container.name}"
}

output "storage_container_id" {
  value = "${azurerm_storage_container.blob_container.id}"
}
