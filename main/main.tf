terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.26.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "d8764aa6-fc0a-4ae2-a471-a855c00b6940"
}

module "name2" {
  source = "../resource_group"
  a = var.a
  b = var.b
}

module "name3" {
  source = "../storage_account"
 a = var.a
  b = var.b
  c = var.c
  depends_on = [ module.name2 ]
  
}
