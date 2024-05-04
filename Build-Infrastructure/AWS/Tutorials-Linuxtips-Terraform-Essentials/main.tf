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

# Criar em múltiplas regiões #

provider "aws" {
  alias  = "west"
  region = "us-west-1"
}

terraform { 
  backend "s3" { 
    bucket = "terraform-essentials-luiscruz"  # Lembre de trocar o bucket para o seu
    key    = "terraform-test.tfstate"
    region = "us-east-1"
  }
}


# Caso tenha algum erro no S3, verifique as "Permissions policies" no painel de IAM da AWS
