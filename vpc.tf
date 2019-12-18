resource "aws_vpc" "my_vpc" {
  cidr_block       = "192.168.0.0/24"
  instance_tenancy = "default"
  tags = {
    Name = "Terraform"
  }
}
resource "aws_instance" "Guna" {
  ami           = "ami-0e812bbd44d3f6087"
  instance_type = "t2.micro"

  tags = {
      Name = "Terraform-EC2"
  }
}
