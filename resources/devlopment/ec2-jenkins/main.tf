module "ec2_instance" {
  source = "./modules/ec2_instance/ec2-jenkins.tf"

  
}

provider "aws" {
  region = local.aws_region
}

## Terraform block
terraform {
  required_version = ">= 1.0.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

module "ec2_instance" {
  source        = "../../../modules/ec2_instance"
  aws_region    = "us-east-1"
  key_name      = "terraform-aws"
  instance_type = "t2.medium"
  resource_type = "jenkins-master"
  root_volume   = 40
  tags = {
    "owner"          = "s8armand"
    "environment"    = "development"
    "project"        = "beta"
    "create_by"      = "Terraform"
    "cloud_provider" = "aws"
  }
}