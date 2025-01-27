## Troubleshooting

### Failed to get shared config profile
When I run the command
```
terraform init -backend-config=regions/eu-west-2/staging-state.tfvars
```

I get the error:
```
Initializing the backend...
╷
│ Error: failed to get shared config profile, staging
│ 
│ 
╵
```

This is because you have not setup your AWS CLI with the correct profile.

To fix this, run the following command:
```
AWS_PROFILE=staging aws configure
```

### Failed to get existing workspaces

When I run the command
```
terraform init -backend-config=regions/eu-west-2/staging-state.tfvars
```

I get the error:
```
Initializing the backend...
╷
│ Error: Failed to get existing workspaces: S3 bucket "eu-west-2-staging-terraform-state" does not exist.
│ 
│ The referenced S3 bucket must have been previously created. If the S3 bucket
│ was created within the last minute, please wait for a minute or two and try
│ again.
│ 
│ Error: operation error S3: ListObjectsV2, https response error StatusCode: 404, RequestID: 14EPKSXH6HE3XYCC, HostID: gtFrvjTxsXNTjnkAs3f6VWhwp0H8N3wm4IT9ALP2nOH8ITwJ7ADtwYkzEO4VfHXhYKcENgy+VjI=, NoSuchBucket: 
│ 
│ 

```

This is because the S3 bucket does not exist.

To fix this, create the bucket for the region and environmentin the AWS console or using the AWS CLI. 

```
AWS_PROFILE=staging aws s3api create-bucket \                                                   
    --bucket {region}-{environment}-terraform-state \
    --region {region} \                                      
    --create-bucket-configuration LocationConstraint={region}
```

