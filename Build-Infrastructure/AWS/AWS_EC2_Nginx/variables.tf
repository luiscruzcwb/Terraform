variable "aws_region" {
  description = "The AWS region to deploy to"
  default     = "us-east-1"
}

variable "key_name" {
  description = "The name of the SSH key pair to use for the instance"
  type        = string
}
