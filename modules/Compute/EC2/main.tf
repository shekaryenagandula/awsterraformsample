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
  ami           = data.aws_ami.ubuntu.id
  instance_type = local.instance_type
  associate_public_ip_address = true
  subnet_id = var.subnet_id
  iam_instance_profile = var.instance_name

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}