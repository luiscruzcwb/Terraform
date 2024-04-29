# terraform.tf # 
# Define restrições de versão para o Terraform e o provedor AWS e o 'cloud' bloco para a integração do HCP Terraform.
terraform {
/*
  cloud {
    organization = "luiscruz" # <-- Altere para o nome do seu grupo (Terraform organizations)

    workspaces {
      name = "learn-terraform-aws" 
    }
  }
*/
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.31.0"
    }
  }

  required_version = "~> 1.2"
}
