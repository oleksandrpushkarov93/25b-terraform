resource "aws_vpc" "default" {
  cidr_block = var.cidr_block

  tags = {
    Name = "${var.name}-vpc"
    env  = var.env
  }
}

resource "aws_subnet" "private" {
  vpc_id            = aws_vpc.default.id
  cidr_block        = var.private_subnet_cidr
  availability_zone = var.az

  tags = {
    Name = "${var.name}-private-subnet"
    env  = var.env
  }
}

resource "aws_subnet" "public" {
  vpc_id            = aws_vpc.default.id
  cidr_block        = var.public_subnet_cidr
  availability_zone = var.az

  tags = {
    Name = "${var.name}-public-subnet"
    env  = var.env
  }
}

resource "aws_internet_gateway" "default" {
  vpc_id = aws_vpc.default.id

  tags = {
    Name = "${var.name}-igw"
    env  = var.env
  }
}

resource "aws_nat_gateway" "default" {
  allocation_id = aws_eip.default.id
  subnet_id     = aws_subnet.public.id

  tags = {
    Name = "${var.name}-nat-gw"
    env  = var.env
  }

  # To ensure proper ordering, it is recommended to add an explicit dependency
  # on the Internet Gateway for the VPC.
  depends_on = [aws_internet_gateway.default]
}

resource "aws_eip" "default" {
  domain = "vpc"

  tags = {
    Name = "${var.name}-eip"
    env  = var.env
  }
}
