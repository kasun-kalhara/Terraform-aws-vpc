output "Vpc_id" {
  value = module.Vpc.Vpc-id
}


output "subnet_1_id" {
  value = module.Vpc.subnet_1_id
}

output "subnet_2_id" {
  value = module.Vpc.subnet_2_id
}

output "instanet_public_ip" {
  value = module.compute.instanet_public_ip
}

output "instant_private_ip" {
  value = module.compute.instant_private_ip
}