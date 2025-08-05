public_subnet_cidrs = ["10.0.1.0/24", "10.0.2.0/24"]
private_subnet_cidrs = ["10.0.101.0/24", "10.0.102.0/24"]
availability_zones = ["us-east-1a", "us-east-1b"]

table_name = "user-data"
hash_key = "user_id"
range_key = "created_at"
attributes = [
  { name = "user_id", type = "S" },
  { name = "created_at", type = "S" },
  { name = "expire_at", type = "N" }
]
ttl_enabled = true
ttl_attribute_name = "expire_at"

tags = {
  Environment = "dev"
  Project     = "terraform-dynamodb-vpc"
}
