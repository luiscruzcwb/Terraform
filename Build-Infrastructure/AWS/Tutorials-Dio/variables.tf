variable "table_name" {
  description = "The name of the DynamoDB table"
  type        = string
}

variable "s3_bucket_name" {
    description = "The name of Bucket S3"
    type        = string
}

variable "getPerson_zip" {
  description = " / Path to the first zip file to upload"
  type        = string
}

variable "registerPerson_zip" {
  description = " / Path to the second zip file to upload"
  type        = string
}

variable "aws_account_id" {
  description = "AWS Account ID"
  type        = string
  # Adicione um valor padrão ou passe-o como uma variável de ambiente ou através de um arquivo de variáveis
  default     = ""
}
