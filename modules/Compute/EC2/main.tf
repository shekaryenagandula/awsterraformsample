locals {
  instance_type="t3.micro"
}

data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}
resource "aws_instance" "web" {
  # count = length(var.server_names)
  for_each = {for idx, appname in var.server_names: appname => idx}
  ami           = data.aws_ami.ubuntu.id
  instance_type = local.instance_type
  subnet_id = var.subnet_id

  tags = {
    Name=format(each.key,each.value+1)
    Terraform   = "true"
    Environment = "dev"
  }
}