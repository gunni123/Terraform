provider "aws" {
  region = "us-east-1"
  access_key = var.access_key
  secret_key = var.secret_key
}
terraform {
  backend "s3" {
    bucket = "bucketguna"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}
