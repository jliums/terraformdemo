# backend.tf

terraform {
  backend "azurerm" {
    resource_group_name  = "terraform_rg"
    storage_account_name = "satfstate1205"
    container_name       = "storagecontainer01"
    key                  = "terraform.tfstate"
    tenant_id            = "6607fd25-4a81-439b-bec8-a5f7e8227659"
    subscription_id      = "0eb241f2-29fc-40f2-97b2-15579b4a8184"
  }
}