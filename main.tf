terraform {
  required_version = "~> 0.11.1"
}

provider "azurerm" {
  version = ">= 1.1.0"
}

resource "azurerm_storage_account" "sa" {
  name                     = "${var.storage_account_name}"
  location                 = "${var.location}"
  account_tier             = "${var.storage_account_tier}"
  resource_group_name      = "${var.resource_group_name}"
  account_replication_type = "${var.storage_account_replication_type}"

  network_rules {
    default_action             = "${var.default_action}"
    virtual_network_subnet_ids = ["${var.virtual_network_subnet_ids}"]
  }
}
