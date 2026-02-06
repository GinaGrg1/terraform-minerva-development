resource "azurerm_storage_container" "rgcontainer" {
  name                  = "rgcontainer"
  storage_account_id    = var.storage_account_id
  container_access_type = "private"
}