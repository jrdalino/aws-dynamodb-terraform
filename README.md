# Terraform module to provision an AWS DynamoDB Table

## Prerequisites
- Provision an S3 bucket to store Terraform State and DynamoDB for state-lock using https://github.com/jrdalino/aws-tfstate-backend-terraform
- AssumeRole: "OrganizationAccountAccessRole" should exist in the destination AWS account

## Terraform Module Usage
- Copy the contents of /examples folder (main.tf, ouputs.tf, state_config.tf, terraform.tfvars and variabels.tf)
- Include this repository as a module in your existing terraform code:
```
module "dynamodb" {
  source = "git::https://github.com/jrdalino/aws-dynamodb-terraform.git?ref=main"
}
```
- Replace variables in state_config.tf
- Replace variables in terraform.tfvars
- Initialize, Review Plan and Apply
```
$ terraform init
$ terraform fmt
$ terraform validate
$ terraform plan
$ terraform apply
```
## Inputs
| Name | Description |
|------|-------------|
| | |

## Outputs
| Name | Description |
|------|-------------|
| | |

## DynamoDB Table Usage
- Describe the table
```
$ aws dynamodb describe-table \
--table-name organisations
```

- Write items to the table
```
$ aws dynamodb batch-write-item \
--request-items file://~/environment/aws-dynamodb-terraform/populate-dynamodb.json
```

- Scan the table
```
$ aws dynamodb scan \
--table-name examples
```

## References
