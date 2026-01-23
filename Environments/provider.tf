terraform {
    backend "azurerm" {
    resource_group_name  = "kk-rg"
    storage_account_name = "storageaccn1234 "
    container_name       = "kkcontainer"
    key                  = "kk.tfstate"
  }
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.58.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "d0238432-ce06-4b2f-a827-88d353f7f40c"
}