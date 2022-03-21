data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

resource "aws_instance" "web" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t3.micro"

  tags = {
    Name = "NetoLogAWS"
  }
}

provider "aws" {
  profile = "default"
  region  = "us-west-2"
}

data "aws_caller_identity" "current" {}

data "aws_regions" "current" {
  all_regions = true
}














