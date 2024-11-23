# Backend was created by bootstrap
terraform {
  backend "s3" {
    bucket         = "tf-terraform-state-639814259325"
    key            = "dev/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "tf-terraform-lock"
    encrypt        = true
    kms_key_id     = "9298a06e-73a5-4a01-9b03-c19892415c75"
  }
}