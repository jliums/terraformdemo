# Create a Resource Group if it doesn’t exist
resource "azurerm_resource_group" "resource_group" {
  name     = "terraform_rg"
  location = "northeurope"
}

# Create a Storage account
resource "azurerm_storage_account" "terraform_sa" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.resource_group.name
  location                 = azurerm_resource_group.resource_group.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = "my-terraform-env"
  }
}

# Create a Storage container
resource "azurerm_storage_container" "terraform_state" {
  name                  = var.container_name
  storage_account_name  = azurerm_storage_account.terraform_sa.name
  container_access_type = "private"
}