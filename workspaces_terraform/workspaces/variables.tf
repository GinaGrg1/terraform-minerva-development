variable "application_name" {
    type = string
}

variable "environment_name" {
  type = string
}

variable "resource_group_data" {
    type = map(object({
        enabled = bool
        name = string
        location = string
    }))
    default = {}
}

variable "resource_group_name" {
    type = string

    validation {
      condition = length(var.resource_group_name) <= 12
      error_message = "Resouce Group Name must be less than or equal to 12 characters."
    }
}

variable "resource_group_location" {
    type = string
}

# variable "api_key" {
#     type = string
#     sensitive = true
# }

variable "instance_count" {
    type = number

    validation {
      condition = var.instance_count >= local.min_nodes && var.instance_count <= local.max_nodes && var.instance_count % 2 != 0
      error_message = "Must be between 5 and 9 and never even."
    }
}

variable "regions" {
    type = list(string)
  
}

variable "region_instance_count" {
    type = map(string)
}

variable "enabled" {
    type = bool
}

# mostly use in iterations.
variable "region_set" {
    type = set(string)
  
}

variable "sku_settings" {
    type = object({
      kind = string
      tier = string
    })
  
}

# variable "resource_group_output" {
# }