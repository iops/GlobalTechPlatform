## AWS VPC Configuration using terraform-aws-vpc module
This module will create a comprehensive VPC configuration using the official AWS VPC module with best practices for security and scalability.

This configuration implements several AWS best practices:

1. **High Availability**:
   - Multi-AZ deployment with configurable number of availability zones
   - Option for single or multiple NAT Gateways for cost/availability tradeoff

2. **Security**:
   - VPC Flow Logs enabled for network monitoring
   - Default security group with no rules (explicit rules required)
   - Private subnets for internal resources
   - VPC Endpoints for secure AWS service access

3. **Networking**:
   - Automated CIDR block calculation for subnets
   - Separate public and private subnets
   - Gateway endpoints for S3 and DynamoDB
   - Interface endpoints for SSM services

To deploy this configuration:

1. Create a `terraform.tfvars` file:
```hcl
environment = "prod"
vpc_cidr = "10.0.0.0/16"
az_count = 3
tags = {
  Environment = "prod"
  Owner       = "infrastructure"
}
```

2. Plan and apply:
```bash
terraform plan
terraform apply
```

For additional customization:
- Adjust `az_count` based on your availability requirements
- Set `single_nat_gateway` to `true` for development environments to reduce costs
- Add additional VPC endpoints as needed
- Modify subnet CIDR calculations if you need different network segments

The configuration is ready for production use and can be extended with additional resources like VPN connections or Transit Gateway attachments if needed.