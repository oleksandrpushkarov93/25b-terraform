provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "myec2" {
  ami           = "ami-0360c520857e3138f"
  instance_type = "t3.micro"
  
  tags = {
    mytag = "MyFirstEC2"
    Name = "terraform_created_ec2"
  }
}