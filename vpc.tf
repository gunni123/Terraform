resource "aws_vpc" "my_vpc" {
  cidr_block       = "192.168.0.0/24"
  instance_tenancy = "default"
  tags = {
    Name = "Terraform"
  }
}
data "aws_ami" "ubuntu" {
    most_recent = true

    filter {
      name   = "name"
      values = ["ubuntu/images/hvm-ssd/ubuntu-trusty-14.04-amd64-server-*"]
    }

    filter {
      name   = "virtualization-type"
      values = ["hvm"]
    }

    owners = ["633373245219"] # Canonical
  }

resource "aws_instance" "web" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t2.micro"

  tags = {
      Name = "Terraform-EC2"
  }
}
