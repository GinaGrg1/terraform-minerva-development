resource "random_string" "suffix" {
  length = 10
  upper = false
  special = false
}

resource "azurerm_resource_group" "rg-new" {
    name = var.resource_group_name
    location = var.resource_group_location
}

resource "azurerm_storage_account" "main_storage" {
  name                     = "st${random_string.suffix.result}"
  resource_group_name      = azurerm_resource_group.rg-new.name
  location                 = azurerm_resource_group.rg-new.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    environment = "dev"
  }
}