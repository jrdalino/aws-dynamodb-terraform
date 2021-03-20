# General
aws_region  = "ap-southeast-1"
aws_account = "623552185285" # AWS account where resource will be created
aws_role    = "OrganizationAccountAccessRole"

# Tagging
namespace       = "bbsdm"
bounded_context = "organisation"
environment     = "production"

# DynamoDB Table
aws_dynamodb_table_name           = "organisation"
aws_dynamodb_table_hash_key       = "organisationId"
aws_dynamodb_table_read_capacity  = "5"
aws_dynamodb_table_write_capacity = "5"