output "vpc" {
  value = aws_vpc.dev.id
}

output "vpc_arn" {
  value = aws_vpc.dev.arn
}

output "subnet" {
  value = aws_subnet.dev.id
}

output "subnet_arn" {
  value = aws_subnet.dev.arn
}