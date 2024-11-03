module "ec2_example" {
  source = "./ec2_instance"

  region            = "us-east-1"
  ami_id            = "ami-0c55b159cbfafe1f0"
  instance_type     = "t2.micro"
  key_name          = "your-keypair-name"
  subnet_id         = "subnet-1234567890abcdef0"
  security_group_id = "sg-0abc123456789def0"
  instance_name     = "s8armandModuleTerraform"
}