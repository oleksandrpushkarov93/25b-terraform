provider "aws" {
  region = "us-east-1"
}

module "vpc" {
  source              = "./modules/vpc"
  cidr_block          = "10.0.0.0/16"
  name                = "class-4"
  env                 = "prd"
  az                  = "us-east-1b"
  private_subnet_cidr = "10.0.10.0/24"
  public_subnet_cidr  = "10.0.100.0/24"
}

module "ec2" {
  source             = "./modules/ec2"
  ami                = "ami-052064a798f08f0d3"
  instance_type      = "t3.micro"
  instance_subnet_id = module.vpc.private_subnet_id
  name               = "class-4"
  env                = "prd"
  vpc_id             = module.vpc.vpc_id
  vpc_cidr           = module.vpc.vpc_cidr
  port               = 80
}
