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

resource "aws_instance" "example" {
  ami           = "ami-0c55b159cbfafe1f0"  
  instance_type = "t2.micro"  
  key_name      = "s8armand.perm"  
  subnet_id     = "subnet-1234567890abcdef0"  
  vpc_security_group_ids = ["sg-0abc123456789def0"]  

  tags = {
    Name = "s8armandInstancefromTerraform"
  }
}