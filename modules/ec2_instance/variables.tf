
variable "ami_id" {
    type = string
    default = "ami-0c55b159cbfafe1f0"
}

variable "instance_name" {
    type = string
    default = "jenkins" 
}
variable "aws_region" {
    type = string
    default = "us-east-1"
}
variable "security_group_id" {
    type = string
    default = "sg-0abc123456789def0"
}
variable "subnet_id" {
    type = string
    default = "subnet-1234567890abcdef0"
}

variable "key_name" {
    type = string
    default = "s8armand.perm"
}

variable "instance_type" {
    type = string
    default = "t2.micro"
}
variable "tags" {
    type = map(string)
    default = {
    "owner"          = "S8ARMAND"
    "environment"    = "dev"
    "project"        = "del"
    "create_by"      = "Terraform"
    "cloud_provider" = "aws"
  }
}