variable "resource_group_name" {
  description = "(Required) The name of the resource group in which to create the storage account. Changing this forces a new resource to be created. If omitted, will create a new RG based on the `name` above"
}

variable "storage_account_name" {
  description = "(Required) Specifies the human consumable label for this resource."
}

variable "location" {
  description = " (Required) Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created."
}

variable "storage_account_tier" {
  description = "(Required) Defines the Tier to use for this storage account. Valid options are Standard* and Premium. Changing this forces a new resource to be created"
  default     = "Standard"
}

variable "storage_account_replication_type" {
  description = "(Required) Defines the type of replication to use for this storage account. Valid options are LRS*, GRS, RAGRS and ZRS."
  default     = "LRS"
}

## A network_rules block 
variable "default_action" {
  description = "(Required) Specifies the default action of allow or deny when no other rules match. Valid options are Deny or Allow"
  default = "Deny"
}

variable "virtual_network_subnet_ids" {
  description = "(Required) A list of resource ids for subnets."
  tyoe = "list"
}
