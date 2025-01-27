variable "aws_region" {
  description = "AWS region to deploy to"
  type        = string
}

variable "aws_profile" {
  description = "AWS profile to use"
  type        = string
}

variable "environment" {
  description = "Environment name (e.g., staging, prod)"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}

variable "vpc_cidr" {
  description = "CIDR block for VPC"
  type        = string
}