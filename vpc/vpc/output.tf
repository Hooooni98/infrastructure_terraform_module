output vpc_id {
  value       = aws_vpc.vpc.id
  sensitive   = true
  description = "vpc_id"
  depends_on  = []
}
