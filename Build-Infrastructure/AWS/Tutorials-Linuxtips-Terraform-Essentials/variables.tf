variable "image_id"
  default = ""
  type = string
  description = "The ID of het machine image (AMI) to use for the server."


validation { 
   condition = lenght(var.image_id) > 4 && substr(var.image_id, 0, 4) == "ami-"
   error_message = "The image_id value must be a valid AMI id, starting with \"ami-\"."

}




# terraform plan -var image_id="AMI" -out plan1