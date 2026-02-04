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
}

variable "resource_group_location" {
    type = string
}