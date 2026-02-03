locals {
  min_nodes = 5
  max_nodes = 9
}

resource "azurerm_resource_group" "main" {
    name = var.resource_group_name
    location = var.resource_group_location
}

# resource "random_string" "suffix" {
#     length = 6
#     upper = false
#     special = false
# }

# locals {
#   environment_prefix = "${var.application_name}- ${var.environment_name}-${random_string.suffix.result}"
# }

# resource "random_string" "regions_list" {
#     count = length(var.regions) # creates 3 random strings

#     length = 6
#     upper = false
#     special = false
# }

# resource "random_string" "map" {
#     for_each = var.region_instance_count # for_each is a meta argument.

#     length = 6
#     upper = false
#     special = false
# }

# resource "random_string" "if" {
#     count = var.enabled ? 2 : 1 # if var.enabled is true then 2 else 1.

#     length = 6
#     upper = false
#     special = false
# }

module "resource_group" {
    source = "./Modules/resource_group"

    resource_group_name = "rg-dev"
    resource_group_location = "westus"
}