output "vpc_id" {
  value = aws_vpc.main.id
}

output subnet_id {
  value       = aws_subnet.main.id
}

output ec2_private_ip {
  value = aws_instance.main.private_ip
}
