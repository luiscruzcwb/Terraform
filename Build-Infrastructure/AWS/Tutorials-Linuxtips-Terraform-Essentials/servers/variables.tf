variable "image_id" {
  type        = string
  default     = ""
  description = "The ID of the machine image (AMI) to use for the server."

  validation {
    condition     = length(var.image_id) > 4 && can(regex("^ami-", var.image_id))
    error_message = "The image_id value must be a valid AMI id, starting with \"ami-\"."
  }
}


variable "servers" {
  type    = number
  default = 1
}




# terraform plan -var image_id="AMI" -out plan1