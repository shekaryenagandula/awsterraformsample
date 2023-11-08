output "vpc_id" {
  description = "vpc ID and name"
  value = module.vpc_eus_project.id
}
output "subnet_data" {
  description = "subnet details"
  value = module.aws_subnet.id
}
output "ec2_details" {
  description = "ec2 data"
  value = module.ec2_eus_project.id
}