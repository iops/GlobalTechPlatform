# Platform Engineered exclusively for Global Tech 

## Terraform State Backend Configuration

Key security features implemented:
1. KMS-based encryption for S3
2. Versioning and lifecycle management
3. Complete public access blocking
4. DynamoDB encryption at rest
5. Least-privilege IAM policy

To use this backend in your Terraform configuration:
Apply the create_backend.tf configuration first, then use the outputs in your backend.tf file to configure your Terraform projects' backend. 

```hcl
terraform {
  backend "s3" {
    bucket         = "<bucket_name_from_output>"
    key            = "terraform.tfstate"
    region         = "<your_region>"
    dynamodb_table = "<dynamodb_table_from_output>"
    encrypt        = true
    kms_key_id     = "<kms_key_id_from_output>"
  }
}
```
