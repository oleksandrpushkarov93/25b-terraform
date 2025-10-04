module "dev" {
  source        = "../myapp-module"
  cidr_block    = "192.168.0.0/16"
  name          = "25b-class3"
  env           = "dev"
  subnet_cidr   = "192.168.10.0/24"
  ami           = "ami-052064a798f08f0d3"
  instance_type = "t3.micro"
  az            = "us-east-1c"
}

output vpc_id {
  value = module.dev.vpc_id
}

output subnet_id {
  value = module.dev.subnet_id
}

output private_ip  {
  value = module.dev.ec2_private_ip
}
