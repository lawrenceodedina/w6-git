output "public_ip" {
    value = aws_lightsail_instance.custom.public_ip_address
}

output "username" {
    value = aws_lightsail_instance.custom.username 
}
