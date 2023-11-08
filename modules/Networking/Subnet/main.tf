resource "aws_subnet" "main" {
  cidr_block = var.subnet_cidr
  vpc_id= var.vpcid
  tags = {
    Name=var.subnet_name
  }
}
