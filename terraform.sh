#!/bin/bash

# Usage: ./tf-wrapper.sh <region> <environment> <terraform-command>
# Example: ./tf-wrapper.sh eu-west-2 staging plan

REGION=$1
ENV=$2
TF_COMMAND=$3

# Create a workspace name combining region and environment
WORKSPACE="${REGION}-${ENV}"


# Initialize with correct backend config
terraform init -backend-config="regions/${REGION}/${ENV}/terraform-state.tfvars"

# Switch to or create workspace
terraform workspace select $WORKSPACE 2>/dev/null || terraform workspace new $WORKSPACE


# Run terraform command with appropriate var file
terraform $TF_COMMAND -var-file="regions/${REGION}/${ENV}/variables.tfvars"