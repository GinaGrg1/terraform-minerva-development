
data "azurerm_client_config" "current" {}

resource "azurerm_key_vault" "kv-main" {
  name                        = "kv-${var.application_name}-${var.environment_name}"
  location                    = var.location
  resource_group_name         = var.resource_group_name
  tenant_id                   = data.azurerm_client_config.current.tenant_id

  sku_name = "standard"
}