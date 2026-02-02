variable "resource_group_name" {
}

variable "resource_group_location" {
}

variable "subscription_id" {
}

variable "api_key" {
    type = string
    sensitive = true
}

variable "instance_count" {
    type = number
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