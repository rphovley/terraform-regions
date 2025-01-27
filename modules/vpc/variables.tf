variable "aws_region" {
  type        = string
  description = "AWS region"
}

variable "environment" {
  type        = string
  description = "Environment name"
}

variable "vpc_cidr" {
  type        = string
  description = "CIDR block for VPC"
}

variable "aws_profile" {
  type        = string
  description = "AWS profile to use"
}

variable "instance_type" {
  type        = string
  description = "EC2 instance type"
}
