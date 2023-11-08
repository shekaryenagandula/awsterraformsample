resource "aws_vpc" "main" {
 cidr_block = var.cidr_range
 
 tags = {
   Name = var.cidr_name
 }
}