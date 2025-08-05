variable "table_name" { type = string }
variable "billing_mode" { type = string }
variable "hash_key" { type = string }
variable "range_key" { type = string, default = null }

variable "attributes" {
  type = list(object({
    name = string
    type = string
  }))
}

variable "ttl_enabled" { type = bool }
variable "ttl_attribute_name" { type = string, default = null }
variable "tags" {
  type = map(string)
  default = {}
}
