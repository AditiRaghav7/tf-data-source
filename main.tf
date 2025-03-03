terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.55.0"
    }
  }
}

provider "aws" {
  region = "eu-north-1"
}

resource "aws_instance" "VPC-ec2" {
  ami                         = "ami-0b02608ac063c1939"
  instance_type               = "t3.nano"
  subnet_id                   = aws_subnet.public-subnet.id

  tags = {
    Name = "VPC-ec2"
  }
}
