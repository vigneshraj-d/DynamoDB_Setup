provider "aws" {
  region = var.aws_region
}

module "vpc" {
  source             = "./modules/vpc"
  vpc_cidr_block     = var.vpc_cidr_block
  public_subnet_cidrs = var.public_subnet_cidrs
  private_subnet_cidrs = var.private_subnet_cidrs
  availability_zones = var.availability_zones
  tags               = var.tags
}

module "dynamodb" {
  source              = "./modules/dynamodb"
  table_name          = var.table_name
  billing_mode        = var.billing_mode
  hash_key            = var.hash_key
  range_key           = var.range_key
  attributes          = var.attributes
  ttl_enabled         = var.ttl_enabled
  ttl_attribute_name  = var.ttl_attribute_name
  tags                = var.tags
}
