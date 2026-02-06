# resource "azurerm_resource_group" "main_resource_group" {
#     for_each = { for key, value in var.resource_group_data : key => value if value.enabled }

#     name = each.value.name
#     location = each.value.location

#     tags = merge(
#         {"region" = each.value.location},
#     )
# }

resource "azurerm_resource_group" "main_rg" {
    name = var.name
    location = var.location
}
