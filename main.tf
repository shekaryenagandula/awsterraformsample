
#VPC and Subnet Creation
module "vpc_eus_project" {
  source     = "./modules/Networking/VPC"
  cidr_name  = "testvpc"
  cidr_range = "10.0.0.0/16"
}
module "aws_subnet" {
  source      = "./modules/Networking/Subnet"
  subnet_cidr = "10.0.0.0/24"
  subnet_name = "Web"
  vpcid       = data.aws_vpc.vpclist.id
}

#Fetching data for VM Creation
data "aws_vpc" "vpclist" {
  filter {
    name   = "Name"
    values = ["testvpc"]
  }
  depends_on = [ module.vpc_eus_project ]
}

data "aws_subnet" "subnetlist" {
  tags = {
    Name = "Web"
  }
  depends_on = [module.aws_subnet]
}

module "ec2_eus_project" {
  count = 2
  source        = "./modules/Compute/EC2"
  instance_name = "WebServer-${count.index}"
  subnet_id     = data.aws_subnet.subnetlist.id
}
