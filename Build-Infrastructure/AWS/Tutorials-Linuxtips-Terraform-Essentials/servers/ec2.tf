data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  owners = ["099720109477"] # Ubuntu
}

resource "aws_instance" "server-us-east-1" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t2.micro"

  tags = {
    Name = "terraform-essentials"
  }
}

# Criar em múltiplas regiões #

data "aws_ami" "ubuntu_west" {
  provider    = aws.west
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  owners = ["099720109477"] # Ubuntu
}

resource "aws_instance" "server-us-west-1" {
# count         = var.servers #Servers terrafile.tf
  provider      = aws.west
  ami           = data.aws_ami.ubuntu_west.id
  instance_type = "t2.micro"

  tags = {
    Name = "terraform-essentials"
  }
}


# Criar usando hardcoding # 

# resource "aws_instance" "server1" {
#   ami           = "ami-0885b1f6bd170450c" # ubuntu-focal-20.04-amd64-server us-east-1
#   instance_type = "t2.micro"
# 
#   tags = {
#     Name = "terraform-essentials"
#   }
# }
