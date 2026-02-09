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

