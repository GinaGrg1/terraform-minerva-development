resource "azurerm_log_analytics_workspace" "az_log_analytics" {
    name                = "log-something"
    location            = var.name
    resource_group_name = var.location
    sku                 = var.sku
    retention_in_days   = var.retention_in_days
}