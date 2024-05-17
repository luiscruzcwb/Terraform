# Resource type, Name

output "ip_address_us_east_1" {
    value = aws_instance.server-us-east-1.public_ip
}

output "ip_address_us_west_1" {
    value = aws_instance.server-us-west-1.public_ip
}
