enabled = true
instance_count = 7
application_name = "PurpleTrain"
environment_name = "dev"
resource_group_name = "dev"
resource_group_location = "centralus"
subscription_id = "b21fc0f4-4793-428f-a61b-257b399c752e"

regions = ["westus", "eastus"]
region_instance_count = {
    "westus" = 4
    "eastus" = 8
}
region_set = ["westus", "eastus"]

sku_settings = {
    kind = "D"
    tier = "Business"

}