variable "resource_group_data" {
    type = map(object({
        enabled = bool
        name = string
        location = string
    }))
    default = {}
}