variable "cidr_block" {
  type        = string
  description = "CIDR range of VPC"
}

variable "subnet_cidr" {
  type        = string
  description = "Subnet CIDR"
}

variable "env" {
  type        = string
  description = "Environment"
}

variable "order" {
  type        = number
  default     = 555
  description = "Just a funny variable to use a number"
}

variable "managed_by_terraform" {
  type        = bool
  default     = true
  description = "Whether resource is terraform managed"
}