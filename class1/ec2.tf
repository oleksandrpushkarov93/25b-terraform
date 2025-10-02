provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "myec2" {
  ami           = "ami-0360c520857e3138f"
  instance_type = "t3.micro"
  vpc_security_group_ids = [aws_security_group.example.id, "sg-4d382c6c"]
  
  tags = {
    mytag = "MyFirstEC2"
    Name = "terraform_created_ec2"
    DateCreated = "10/01/2025"
  }
}

resource "aws_security_group" "example" {
  name        = "allow_ssh"
  description = "Allow ssh traffic and all outbound traffic"
  vpc_id      = "vpc-5457422e"

  ingress {
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["192.168.0.0/16"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_ssh"
  }
}
