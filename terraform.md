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
bash ./terraform.sh eu-west-2 staging init
```

## Adding infrastructure definitions
Infrastructure definitions are located in the root of the project. Any .tf files in the root directory will be used to create the infrastructure in your region and environment. Ideally, split these defintions into separate files for the purpose of the infrastructure like networking.tf

## Adding a new region or environment
Any additional regions or environments can be added by creating a new bucket in S3, and then adding a new folder in the regions directory with the region name and a new folder with the environment name. An example is provided in `regions/eu-west-2/staging`.

## How to use the terraform.sh script
The script is simple and is just a shorthand for selecting a workspace and then running the appropriate terraform command for that workspace. This makes it so the different regions and environments don't get stored into the same state file. Terraform workspaces allow us to manage multiple environments, and multiple regions, without them interfering with each other.

```
bash ./terraform.sh <region> <environment> <terraform-command>
```

Example:
```
bash ./terraform.sh eu-west-2 staging plan
```

This will run the `plan` command for the `eu-west-2` region and `staging` environment. 

## Available Terraform Commands

- `plan` - Generate and show an execution plan
- `apply` - Apply a Terraform plan
- `destroy` - Destroy Terraform-managed infrastructure


## Notes

- In order to create a new region or environment, you must create a new bucket that tracks the infrastructure state in S3 and update the `provider.tf` file with the new region. Terraform will not create the bucket for you.