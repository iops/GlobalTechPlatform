# variables.tf
variable "aws_region" {
  description = "AWS region for resources"
  type        = string
  default     = "us-east-1"
}

variable "prefix" {
  description = "Prefix for resource names"
  type        = string
  default     = "tf"
}

variable "state_history_retention_days" {
  description = "Number of days to retain old state versions"
  type        = number
  default     = 30
}
