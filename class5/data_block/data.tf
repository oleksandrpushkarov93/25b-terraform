# get vpc id by using its tags
data "aws_vpc" "twentyfiveb" {
  tags = {
    Name = "25B"
  }
}

# retrieve all subnets that belong to the VPC
data "aws_subnets" "twentyfiveb" {
  filter {
    name = "vpc-id"
    # use data block above for the vpc id
    values = [data.aws_vpc.twentyfiveb.id]
  }
}

# print subnets on the screen
output "subnets" {
  value = data.aws_subnets.twentyfiveb.ids
}

# print availability zones for us-east-1
data "aws_availability_zones" "available" {
  region = "us-east-1"
  state  = "available"
}

output "azs" {
  value = data.aws_availability_zones.available.names
}