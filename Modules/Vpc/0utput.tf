output "Vpc-id" {
  value = aws_vpc.Main_Vpc.id
}

output "subnet_1_id" {
  value = aws_subnet.Public_subnet_1.id
}

output "subnet_2_id" {
  value = aws_subnet.Public_subnet_2.id
}