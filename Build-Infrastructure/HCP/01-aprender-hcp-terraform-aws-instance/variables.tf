# variables.tf #
# Define as variáveis ​​de entrada referenciadas em main.tf, que tornam a configuração personalizável. 
# Você definirá essas variáveis ​​na UI do HCP Terraform posteriormente.

variable "region" {
  description = "AWS region"
  default     = "us-west-1"
}

variable "instance_type" {
  description = "Type of EC2 instance to provision"
  default     = "t2.micro"
}

variable "instance_name" {
  description = "EC2 instance name"
  default     = "Provisioned by Terraform"
}

