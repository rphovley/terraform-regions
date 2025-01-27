locals {
  name_prefix = "${var.environment}-${var.aws_region}"
}

# Example VPC configuration
resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr
  
  tags = {
    Name        = "${local.name_prefix}-vpc"
    Environment = var.environment
  }
}

# Other resources following similar pattern...