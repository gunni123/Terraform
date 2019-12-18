provider "aws" {
}
terraform {
  backend "s3" {
    bucket = "bucketguna"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}

