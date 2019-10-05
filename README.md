# azurerm-terraform-storage-account
Terraform module to set up a storage account on Azure for Azure Blob storage and Azure Files

## Usage
This contains the bare minimum options to be configured for the storage account to be provisioned.

```hcl-terraform

data "azurerm_resource_group" "rg" {
  name = "rg"
}

data "azurerm_subnet" "subnet_0" {
  name                 = "subnet-0"
  virtual_network_name = "vnet"
  resource_group_name  = "${data.azurerm_resource_group.rg.name}"
}

data "azurerm_subnet" "subnet_1" {
  name                 = "subnet-1"
  virtual_network_name = "vnet"
  resource_group_name  = "${data.azurerm_resource_group.rg.name}"
}

module "storage-account"{
  source                                   = "github.com/public-terraform-module-registry/terraform-azurerm-storage-account.git"
  name                                     = "mystorage"
  location                                 = "East US"
  resource_group_name                      = "${data.azurerm_resource_group.rg.name}"
  virtual_network_subnet_ids               = "${list(data.azurerm_subnet.subnet_0.id,data.azurerm_subnet.subnet_1.id)}"  
}

## Authors

Originally created by [tomu](https://github.com/nm7-jp)

## License

[MIT](LICENSE)
