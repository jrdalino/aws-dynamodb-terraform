module "ecr" {
  source = "git::https://github.com/jrdalino/aws-dynamodb-terraform.git?ref=main"
  # General
  aws_region              = var.aws_region
  aws_account             = var.aws_account
  aws_role                = var.aws_role

  # Tagging
  namespace               = var.namespace
  bounded_context         = var.bounded_context
  environment             = var.environment

  # DynamoDB Table
  aws_dynamodb_table_name           = var.aws_dynamodb_table_name
  aws_dynamodb_table_hash_key       = var.aws_dynamodb_table_hash_key
  aws_dynamodb_table_read_capacity  = var.aws_dynamodb_table_read_capacity
  aws_dynamodb_table_write_capacity = var.aws_dynamodb_table_write_capacity
}