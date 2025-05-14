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
  resource_provider_registrations = "core"
}