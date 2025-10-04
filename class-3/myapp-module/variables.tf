variable "cidr_block" {
  type        = string
  description = "VPC CIDR range"
}

variable "name" {
  type        = string
  description = "Name of the resource"
}

variable "env" {
  type        = string
  description = "application environment"
}

variable "subnet_cidr" {
  type        = string
  description = "Subnet CIDR range"
}

variable "ami" {
  type        = string
  description = "AMI id of the instance"
}

variable "instance_type" {
  type        = string
  description = "Instance type"
}

variable "az" {
  type        = string
  description = "Availability zone for subnet"
}
