provider "aws" {
   access_key = var.aws_access_key
   secret_key = var.aws_secret_key
   region = var.aws_region
   skip_credentials_validation = true
}

#SecurityGroups

resource "aws_security_group" "allow_ports" {
   name        = "allow_ssh_http"
   description = "Allow inbound SSH traffic and http from any IP"
   vpc_id      = "${module.vpc.vpc_id}"

   #ssh access
   ingress {
       from_port   = 22
       to_port     = 22
       protocol    = "tcp"
       # Restrict ingress to necessary IPs/ports.
       cidr_blocks = ["0.0.0.0/0"]
   }

   # HTTP access
   ingress {
       from_port   = 80
       to_port     = 80
       protocol    = "tcp"
       # Restrict ingress to necessary IPs/ports.
       cidr_blocks = ["0.0.0.0/0"]
   }

   egress {
       from_port   = 0
       to_port     = 0
       protocol    = "-1"
       cidr_blocks = ["0.0.0.0/0"]
   }
  
   tags {
       Name = "Allow SSH and HTTP"
   }
}


#WebServerNginx

resource "aws_instance" "webserver" {
   instance_type          = "${var.instance_type}"
   ami                    = "${lookup(var.aws_amis, var.aws_region)}"
   count                  = "${var.instance_count}"
   key_name               = "${var.key_name}"
   vpc_security_group_ids = ["${aws_security_group.allow_ports.id}"]
   subnet_id              = "${element(module.vpc.public_subnets,count.index)}"
   user_data              = "${file("scripts/init.sh")}"
  
   tags {
       Name = "Webserver"
   }
}