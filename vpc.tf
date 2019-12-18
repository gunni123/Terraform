resource "aws_vpc" "my_vpc" {
  cidr_block       = "192.168.0.0/24"
  instance_tenancy = "default"
  tags = {
    Name = "Terraform"
  }
}
resource "aws_instance" "Guna" {
  ami           = "ami-408c7f28"
  instance_type = "t2.micro"
  
  tags = {
      Name = "Terraform-EC2"
  }
}
