variable "aws_region" {
  default = "us-east-1"
}

variable "vpc_cidr_block" {
  default = "10.0.0.0/16"
}

variable "public_subnet_cidrs" {
  type = list(string)
}

variable "private_subnet_cidrs" {
  type = list(string)
}

variable "availability_zones" {
  type = list(string)
}

variable "table_name" {}
variable "billing_mode" { default = "PAY_PER_REQUEST" }
variable "hash_key" {}
variable "range_key" { default = null }
variable "attributes" {
  type = list(object({
    name = string
    type = string
  }))
}
variable "ttl_enabled" { default = false }
variable "ttl_attribute_name" { default = null }

variable "tags" {
  type = map(string)
  default = {}
}
