variable "aws_region" {
   description = "AWS Region to launch servers"
   default = "eu-west-2"
}

variable "aws_access_key" {
   description = "AWS User Access Key"
   default = "XXXXXXXXXXXXXXXXXX"
}

variable "aws_secret_key" {
   description = "AWS User Secret Key"
   default = "XXXXXXXXXXXXXXXXXX"
}


variable "aws_amis" {
   default = {
       us-east-1 = "ami-058bd2d568351da34" # Debian 12
       eu-west-2 = "ami-04e5276ebb8451442" # Amazon Linux 2023 AMI
   }
}

variable "instance_type" {
   description = "Type of AWS EC2 instance."
   default     = "t2.micro"
}

variable "public_key_path" {
   description = "Enter the path to the SSH Public Key to add to AWS."
   default     = "~/.ssh/yourkey.pem"
}

variable "key_name" {
   description = "AWS key name"
   default     = "name of keypair"
}

variable "instance_count" {
   default = 1
}