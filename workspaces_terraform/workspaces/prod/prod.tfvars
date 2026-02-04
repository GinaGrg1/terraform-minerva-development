enabled = false
instance_count = 7
application_name = "PurpleTrain"
environment_name = "prod"
resource_group_name = "rg-prod"
resource_group_location = "centralus"

resource_group_data = {
    production_01 = {
        enabled = true
        name = "rg01-comp-prod"
        location = "westus"
    },
    production_02 = {
        enabled = true
        name = "rg02-comp-prod"
        location = "uksouth"
    }
}

regions = ["westus", "eastus", "centralus"]
region_instance_count = {
    "westus" = 4
    "eastus" = 8
}
region_set = ["westus", "eastus"]

sku_settings = {
    kind = "D"
    tier = "Business"

}
