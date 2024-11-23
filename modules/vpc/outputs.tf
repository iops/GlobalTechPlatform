output "vpc_id" {
  description = "The ID of the VPC"
  value       = module.vpc.vpc_id
}

output "private_subnets" {
  description = "List of IDs of private subnets"
  value       = module.vpc.private_subnets
}

output "public_subnets" {
  description = "List of IDs of public subnets"
  value       = module.vpc.public_subnets
}

output "nat_gateway_ips" {
  description = "List of NAT Gateway public IPs"
  value       = module.vpc.nat_public_ips
}

output "private_route_table_ids" {
  description = "List of IDs of private route tables"
  value       = module.vpc.private_route_table_ids
}

output "public_route_table_ids" {
  description = "List of IDs of public route tables"
  value       = module.vpc.public_route_table_ids
}

# output "vpc_endpoint_s3_id" {
#   description = "ID of VPC endpoint for S3"
#   value       = module.vpc.vpc_endpoint_s3_id
# }

# output "vpc_endpoint_dynamodb_id" {
#   description = "ID of VPC endpoint for DynamoDB"
#   value       = module.vpc.vpc_endpoint_dynamodb_id
# }