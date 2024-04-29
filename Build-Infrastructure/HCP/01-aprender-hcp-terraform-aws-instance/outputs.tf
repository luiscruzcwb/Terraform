# outputs.tf #
# Define as informações sobre sua infraestrutura que o HCP Terraform exibirá quando fizer alterações.

output "instance_ami" {
  value = aws_instance.ubuntu.ami
}

output "instance_arn" {
  value = aws_instance.ubuntu.arn
}

