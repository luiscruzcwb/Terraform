resource "aws_instance" "nginx" {
  ami           = "ami-04b70fa74e45c3917" # Ubuntu, 24.04 LTS, amd64, verifique se é a mais recente para sua região
  instance_type = "t2.micro"
  subnet_id     = module.vpc.public_subnets[0]
  associate_public_ip_address = true

  tags = {
    Name = "nginx-server"
  }

  user_data = <<-EOF
              #!/bin/bash
              # Instalando Docker
              sudo apt-get remove docker docker-engine docker.io -y
              sudo apt-get update -y
              sudo apt-get install -y apt-transport-https ca-certificates curl software-properties-common
              curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
              sudo apt-key fingerprint 0EBFCD88
              sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
              sudo apt-get update -y
              sudo apt-get install docker-ce -y
              sudo usermod -aG docker $USER
              sudo systemctl enable docker
              sudo systemctl restart docker
              sudo docker run --name docker-nginx -p 80:80 -d nginx:latest
              EOF

  key_name = var.key_name

  vpc_security_group_ids = [aws_security_group.nginx_sg.id]
}

resource "aws_security_group" "nginx_sg" {
  vpc_id = module.vpc.vpc_id
  name_prefix = "nginx-sg-"

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
