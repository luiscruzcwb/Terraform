# main.tf #
# Especifica o provedor AWS , um plugin de provedor que o Terraform usará para gerenciar seus recursos AWS. 
# A configuração define uma instância do EC2 e usa uma fonte de dados Terraform para acessar uma imagem de máquina a ser usada para a instância.


provider "aws" {
  region = var.region
}

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

resource "aws_instance" "ubuntu" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = var.instance_type

  tags = {
    Name = var.instance_name
  }
}
