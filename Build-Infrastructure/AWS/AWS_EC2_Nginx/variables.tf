variable "aws_region" {
   description = "AWS Region to launch servers"
   default = "us-east-1a"
}

variable "aws_access_key" {
   description = "AWS User Access Key"
   default = "" # Access key ID
}

variable "aws_secret_key" {
   description = "AWS User Secret Key"
   default = "" # Secret access key
}


variable "aws_amis" {
   default = {
       us-east-1a = "ami-058bd2d568351da34"
       us-east-1b = "ami-058bd2d568351da34"    
   }
}

variable "instance_type" {
   description = "Type of AWS EC2 instance."
   default     = "t2.micro"
}

variable "public_key_path" {
   description = "Enter the path to the SSH Public Key to add to AWS."
   default     = "" # Key SSH
}

variable "key_name" {
   description = "AWS key name"
   default     = "" # EC2 Key Pairs name 
}

variable "instance_count" {
   default = 1
}