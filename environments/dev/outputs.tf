# outputs.tf
output "bucket_name" {
  description = "Name of the S3 bucket storing Terraform state"
  value       = aws_s3_bucket.terraform_state.id
}

output "dynamodb_table_name" {
  description = "Name of the DynamoDB table for state locking"
  value       = aws_dynamodb_table.terraform_lock.id
}

output "kms_key_id" {
  description = "ID of KMS key used for encryption"
  value       = aws_kms_key.terraform_state.id
}

