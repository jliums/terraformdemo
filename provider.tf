# provider.tf

# provider "azurerm" {
#   features = {}
# }

# # Set the Azure Provider source and version being used
# terraform {
#   required_version = ">= 0.14"

#   required_providers {
#     azurerm = {
#       source  = "hashicorp/azurerm"
#       version = "~> 3.1.0"
#     }
#   }
# }

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.1.0"
    }
  }
}

provider "azurerm" {
  features {}
  # resource_provider_registrations = "core"
  #tenant_id            = "6607fd25-4a81-439b-bec8-a5f7e8227659"

  #client_id           = "1625b1e9-2fc6-473c-8019-0666a345b1c0"

}
