terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "s3" {
    # Note: Backend configuration cannot use variables so they are set in the environment-specific files in ./environments
  }
}
module "vpc" {
  source = "../../../modules/vpc"

  environment   = module.variables.all_vars.environment
  aws_region    = module.variables.all_vars.aws_region
  vpc_cidr      = module.variables.all_vars.vpc_cidr
  aws_profile   = module.variables.all_vars.aws_profile
  instance_type = module.variables.all_vars.instance_type
}

provider "aws" {
  region  = module.variables.all_vars.aws_region
  profile = module.variables.all_vars.aws_profile
}
