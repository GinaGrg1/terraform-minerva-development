variable "resource_group_name" {
    type = string

    validation {
      condition = length(var.resource_group_name) <= 12
      error_message = "Resouce Group Name must be less than or equal to 12 characters."
    }
}

variable "resource_group_location" {
}

variable "resource_group_data" {
    type = map(object({
        enabled = bool
        name = string
        location = string
    }))
    default = {}
}