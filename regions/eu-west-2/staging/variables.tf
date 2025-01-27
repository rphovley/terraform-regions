variable "bucket" {
  type        = string
  description = "S3 bucket name"
}

variable "key" {
  type        = string
  description = "S3 bucket key"
}

variable "region" {
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

variable "profile" {
  type        = string
  description = "AWS profile to use"
}

variable "instance_type" {
  type        = string
  description = "EC2 instance type"
}

