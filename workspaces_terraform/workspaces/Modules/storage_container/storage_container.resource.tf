
resource "azurerm_storage_container" "rgcontainers" {
    name = var.container
    storage_account_id = var.storage_account_id
    container_access_type = "private"
}