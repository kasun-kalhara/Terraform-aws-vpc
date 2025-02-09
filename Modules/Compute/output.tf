output "instanet_public_ip" {
  value = aws_instance.frontend.public_ip
}

output "instant_private_ip" {
  value = aws_instance.frontend.private_ip
}