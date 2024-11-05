provider "aws" {
  region = "us-east-1"  
}

terraform {
  required_version = ">= 1.0.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

    tags = {
        Name        = "Instance"
        Environment = "Test"
        Project     = "homework_001"
        Owner       = "s8armand"
      }

resource "aws_instance" "terraformtest" {
  ami           = "ami-06b21ccaeff8cd686"  
  instance_type = "t2.micro"  
  key_name      = "s8armand.perm"  
  subnet_id     = "subnet-09cd7fc700d1e24ed"  
  vpc_security_group_ids = ["sg-07b9596b11071f81a"]  

  tags = {
    Name = "s8armandInstancefromTerraform"
  }
}