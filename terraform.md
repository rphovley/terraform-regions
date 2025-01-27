# Terraform Instructions

## Getting started

1. [Install Terraform](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli) 
2. [Install AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html)


## Getting Started

1. Sign into AWS with CLI
```
AWS_PROFILE=staging aws configure
```
*Note: We use AWS profiles to manage different environments. The profile name is the environment name.*
2. Test your terraform installation
```
terraform --version
```
3. Test your AWS connection with Terraform
```
terraform plan
```

## Terraform Commands

- `terraform init` - Initialize a new or existing Terraform project
- `terraform plan` - Generate and show an execution plan
- `terraform apply` - Apply a Terraform plan
- `terraform destroy` - Destroy Terraform-managed infrastructure

## Notes

- In order to create a new region or environment, you must create a new bucket that tracks the infrastructure state in S3 and update the `provider.tf` file with the new region. Terraform will not create the bucket for you.