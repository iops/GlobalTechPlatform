# environments/dev/main.tf
module "bootstrap" {
  source = "../../bootstrap"
}

module "vpc" {
  source = "../../modules/vpc"

  environment = var.environment
  vpc_cidr    = var.vpc_cidr
  # Other variables
}

# Prepare for security module
#module "security" {
#source = "../../modules/security"
#
#environment = var.environment
#vpc_id      = module.vpc.vpc_id
## Other variables
#}