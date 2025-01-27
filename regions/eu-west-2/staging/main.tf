module "vpc" {
  source = "../../../modules/vpc"

  aws_region    = var.region
  environment   = var.environment
  vpc_cidr      = var.vpc_cidr
  aws_profile   = var.profile
  instance_type = var.instance_type
}
