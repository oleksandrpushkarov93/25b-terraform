provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket       = "21d-ubuntu-iam-tf-state-s3"
    key          = "10082025/terraform.tfstate"
    region       = "us-east-1"
    use_lockfile = true
  }
}
