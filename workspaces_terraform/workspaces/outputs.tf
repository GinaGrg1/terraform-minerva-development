# output "resource_group_output" {
#     value = zipmap(values(azurerm_resource_group.main)[*].name, values(azurerm_resource_group.main)[*])
# }

output "api_key" {
    value = "${var.api_key}-bar"
    sensitive = true
}

output "primary_region" {
    value = var.regions[0]
}

output "primary_region_instance" {
    value = var.region_instance_count[var.regions[0]]
}

output "sku_setting_kind" {
    value = var.sku_settings.kind
}

output "resource_group_output" {
  value = module.resource_group.resource_group_output
}