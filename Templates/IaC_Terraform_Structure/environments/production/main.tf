# Production Environment: environments/production/main.tf

provider "aws" {
  region = "ap-northeast-1"
}

module "vpc" {
  source       = "../../modules/vpc"
  project_name = "sre-roadmap-prod"
  vpc_cidr     = "10.0.0.0/16"
}

output "vpc_id" {
  value = module.vpc.vpc_id
}
