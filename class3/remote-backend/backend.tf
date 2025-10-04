terraform {
  backend "s3" {
    bucket = "devops312-website"
    key    = "25b-terraform/remote-backend/terraform.tfstate"
    region = "us-east-1"
  }
}
