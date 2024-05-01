# Entendendo o HCL (Arquivo de definição do Terraform)

terraform {
  required_providers {
    aws = { 
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

terraform { 
  backend "s3" { 
    bucket = "terraform-essentials-luiscruz"  # Lembre de trocar o bucket para o seu
    key    = "terraform-test.tfstate"
    region = "us-east-1"
  }
}

# Caso tenha algum erro, verifique as "Permissions policies" no painel de IAM da AWS

# Criar em multiplas regioes #

# provider "aws" { 
#   alias = "east-2"
#   region = "us-east-2"
# }