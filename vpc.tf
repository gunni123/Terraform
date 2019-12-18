resource "aws_vpc" "my_vpc" {
  cidr_block       = "127.0.0.0/16"
  instance_tenancy = "default"
  tags = {
    Name = "Terraform"
  }
}