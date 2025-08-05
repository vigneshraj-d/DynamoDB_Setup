resource "aws_dynamodb_table" "this" {
  name         = var.table_name
  billing_mode = var.billing_mode
  hash_key     = var.hash_key

  dynamic "range_key" {
    for_each = var.range_key != null ? [1] : []
    content {
      range_key = var.range_key
    }
  }

  attribute {
    for_each = var.attributes
    content {
      name = each.value.name
      type = each.value.type
    }
  }

  dynamic "ttl" {
    for_each = var.ttl_enabled ? [1] : []
    content {
      attribute_name = var.ttl_attribute_name
      enabled        = var.ttl_enabled
    }
  }

  tags = var.tags
}
