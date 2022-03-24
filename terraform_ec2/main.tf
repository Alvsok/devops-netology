provider "aws" {
  region = "us-east-1"
}

locals {
  web_instance_type_map = {
    stage = "t3.micro"
    prod = "t3.large"
  }
}

locals {
  web_instance_count_map = {
    stage = 1
    prod = 2
  }
}

resource "aws_instance" "web" {
  ami = "ami-00514a528eadbc95b"  
  instance_type = local.web_instance_type_map[terraform.workspace]
  count = local.web_instance_count_map[terraform.workspace]
  tags = {
    Name = "NetoAlsokTest"
  }
}
