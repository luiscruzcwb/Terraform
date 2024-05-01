resource "aws_instance" "srv1" {
  ami           = "ami-0885b1f6bd170450c" # Ubuntu 20.04 us-east-1
  instance_type = "t2.micro"

  tags = {
    Name = "terraform-essentials"
  }
}