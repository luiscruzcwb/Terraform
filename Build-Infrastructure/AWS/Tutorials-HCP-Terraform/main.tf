terraform {
  cloud {
    organization = "" # HCP Terraform Organizations
    workspaces {
      name = "" # HCP Terraform Workspaces
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "app_server" {
  #ami           = "ami-058bd2d568351da34" # Debian 12 (HVM)
  ami            = "ami-080e1f13689e07408" # Ubuntu Server 22.04 LTS (HVM)
  instance_type = "t2.micro"
  # vpc_security_group_ids = [""]
  # subnet_id              = ""

  tags = {
    Name = var.instance_name
  }
}
