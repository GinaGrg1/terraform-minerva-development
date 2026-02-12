resource "azurerm_data_factory" "corp_data_factory" {
  name                = var.df_name
  location            = var.location
  resource_group_name = var.resource_group_name
}
