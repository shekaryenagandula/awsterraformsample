output "vpc_id" {
  description = "vpc ID and name"
  value = try(module.vpc_eus_project) 
}
output "subnet_data" {
  description = "subnet details"
  value = try(module.aws_subnet)
}
output "ec2_details" {
  description = "ec2 data"
  value = try(module.ec2_eus_project)
}