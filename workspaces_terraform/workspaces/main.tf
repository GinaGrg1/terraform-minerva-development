locals {
  min_nodes = 5
  max_nodes = 9
}

module "main_rg" {
    source = "./Modules/resource_group"

    name = var.resource_group_name
    location = var.resource_group_location
}

module "module-random" {
  source  = "hashicorp/module/random"
  version = "1.0.0"
}

resource "random_string" "suffix" {
  length = 10
  upper = false
  special = false
}

module "main_storage" {
  source = "./Modules/storage_account"

  name = "st${random_string.suffix.result}"
  resource_group_name = module.main_rg.name
  location = module.main_rg.location
}


module "rgcontainers" {
  count = length(var.containers_list)

   source = "./Modules/storage_container"

   container = var.containers_list[count.index]
   storage_account_id = module.main_storage.st-id
  
}


module "az_log_analytics" {
    source = "./Modules/log_analytics"
    
    la_name = var.la_name
    location = module.main_rg.location
    resource_group_name = module.main_rg.name
}


module "corp_data_factory" {
  source = "./Modules/data_factory" 
  
  df_name = var.df_name 
  location = module.main_rg.location 
  resource_group_name = module.main_rg.name
  
}