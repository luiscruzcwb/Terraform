data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  owners = ["099720109477"] # Ubuntu
}

resource "aws_instance" "server1" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t2.micro"

  tags = {
    Name = "terraform-essentials"
  }
}

# Criar em multiplas regioes #

# data "aws_ami" "ubuntu-east-2" {
#   provider = aws.east-2
#   most_recent = true
# 
#   filter {
#     name   = "name"
#     values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
#   }
# 
#   owners = ["099720109477"] # Ubuntu
# }

# resource "aws_instance" "server-1-east-2" {
#   provider = aws.east-2
#   ami           = data.aws_ami.ubuntu.id
#   instance_type = "t2.micro"
# 
#   tags = {
#     Name = "terraform-essentials"
#   }
# }



# Criar usando hardcoding # 

# resource "aws_instance" "server1" {
#   ami           = "ami-0885b1f6bd170450c" # ubuntu-focal-20.04-amd64-server us-east-1
#   instance_type = "t2.micro"
# 
#   tags = {
#     Name = "terraform-essentials"
#   }
# }