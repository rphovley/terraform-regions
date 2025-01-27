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

provider "aws" {
  region  = var.aws_region
  profile = var.aws_profile
}