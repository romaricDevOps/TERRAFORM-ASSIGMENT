variable "region" {
  description = "The AWS region where the EC2 instance will be created."
}

variable "ami_id" {
  description = "The ID of the AMI for the EC2 instance."
}

variable "instance_type" {
  description = "The instance type for the EC2 instance."
}

variable "key_name" {
  description = "The key pair name for SSH access."
}

variable "subnet_id" {
  description = "The ID of the subnet where the EC2 instance will be launched."
}

variable "security_group_id" {
  description = "The ID of the security group for the EC2 instance."
}

variable "instance_name" {
  description = "The name tag for the EC2 instance."
}