locals {
  min_nodes = 5
  max_nodes = 9
}

resource "azurerm_resource_group" "main" {
    name = var.resource_group_name
    location = var.resource_group_location
}

resource "random_string" "suffix" {
    length = 6
    special = false
}

locals {
  environment_prefix = "${var.application_name}- ${var.environment_name}-${random_string.suffix.result}"
}