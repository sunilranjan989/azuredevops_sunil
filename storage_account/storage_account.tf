resource "azurerm_storage_account" "oneman" {
  name                     = var.c
  resource_group_name      = var.a
  location                 = var.b
  account_tier             = "Standard"
  account_replication_type = "GRS"

}