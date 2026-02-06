resource "random_string" "suffix" {
  length = 10
  upper = false
  special = false
}

resource "azurerm_storage_account" "main_storage" {
  name                     = var.name
  resource_group_name      = var.resource_group_name
  location                 = var.location 
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    environment = "dev"
  }
}

resource "azurerm_storage_container" "tfstate" {
  name                  = "tfstate"
  storage_account_id    = azurerm_storage_account.main_storage.id
  container_access_type = "private"
}
