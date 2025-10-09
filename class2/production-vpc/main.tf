module "vpc" {
  source      = "../vpc-module"
  cidr_block  = "10.100.0.0/16"
  subnet_cidr = "10.100.10.0/24"
  env         = "production"
}
