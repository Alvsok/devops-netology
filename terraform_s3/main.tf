
terraform {
  backend "s3" {
    bucket = "netoalsok"
    encrypt = true
    key = "Dev/devops-netology/terraform_s3/terraform.tfstate"
    region = "us-west-2"
    dynamodb_table = "netotable"
  }
}
provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "bucket" {
  # bucket = "netoalsok-${terraform.workspace}"
  bucket = "netoalsok1"
}








