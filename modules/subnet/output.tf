output subnet_public_a_id {
  value       = aws_subnet.subnet_public_a.id
  sensitive   = true
  description = "subnet_public_a_id"
  depends_on  = []
}

output subnet_public_c_id {
  value       = aws_subnet.subnet_public_c.id
  sensitive   = true
  description = "subnet_public_c_id"
  depends_on  = []
}

output subnet_private_a_id {
  value       = aws_subnet.subnet_private_a.id
  sensitive   = true
  description = "subnet_private_a_id"
  depends_on  = []
}

output subnet_private_c_id {
  value       = aws_subnet.subnet_private_c.id
  sensitive   = true
  description = "subnet_private_c_id"
  depends_on  = []
}

output "private_subnet_group_name" {
  value = aws_db_subnet_group.private_subnet_group.name
}