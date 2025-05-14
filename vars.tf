# Input variable: Name of Storage Account
variable "resource_group_name" {
  default = "terraform_rg"
}

variable "resource_group_location" {
  default = "northeurope"
}

variable "storage_account_name" {
  description = "The name of the storage account. Must be globally unique, length between 3 and 24 characters and contain numbers and lowercase letters only."
  default     = "satfstate1405"
}

# Input variable: Name of Storage container
variable "container_name" {
  description = "The name of the Blob Storage container."
  default     = "storagecontainer02"
}
