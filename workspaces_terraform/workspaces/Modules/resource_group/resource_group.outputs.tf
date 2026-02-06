/*
output eg:
    resource_group_output = {
        "rg01-comp-dev" = "westus"
        "rg02-comp-dev" = "uksouth"
}
*/

# output "resource_group_output" {
#     value = zipmap(values(azurerm_resource_group.resource_group)[*].name, values(azurerm_resource_group.resource_group)[*].location)
# }

# output "resource_group_output_names" {
#     value = { for key, value in azurerm_resource_group.resource_group : value.name => value }
# }

output "name" {
    value = azurerm_resource_group.main_rg.name
}

output "location" {
    value = azurerm_resource_group.main_rg.location
}