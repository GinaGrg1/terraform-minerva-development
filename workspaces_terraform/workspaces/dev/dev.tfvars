containers_list = ["tfstate", "config", "logs", "backups"]
df_name = "df-dev"
enabled = false
instance_count = 7
la_name = "la-dev"
application_name = "PurpleTrain"
environment_name = "dev"
resource_group_name = "rg-dev"
resource_group_location = "centralus"

resource_group_data = {
    development_01 = {
        enabled = true
        name = "rg01-comp-dev"
        location = "uksouth"
    },
    development_02 = {
        enabled = true
        name = "rg02-comp-dev"
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