terraform {
  required_version = "~> 0.11.1"
}

provider "azurerm" {
  version = ">= 1.1.0"
}

resource "azurerm_storage_account" "blob_sa" {
  name                     = "${var.storage_account_name}"
  location                 = "${var.location}"
  account_tier             = "${var.storage_account_tier}"
  resource_group_name      = "${var.resource_group_name}"
  account_replication_type = "${var.storage_account_replication_type}"
}

resource "azurerm_storage_container" "blob_container" {
  name                 = "${var.storage_container_name}"
  resource_group_name  = "${var.resource_group_name}"
  storage_account_name = "${azurerm_storage_account.blob_sa.name}"
  container_access_type = "${var.container_access_type}"
}

resource "azurerm_storage_blob" "blob" {
  name = "${var.blob_storage_name}"

  resource_group_name    = "${var.resource_group_name}"
  storage_account_name   = "${azurerm_storage_account.blob_sa.name}"
  storage_container_name = "${azurerm_storage_container.blob_container.name}"

  type = "block"
}
