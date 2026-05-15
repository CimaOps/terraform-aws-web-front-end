output "aws_autoscaling_group_name" {
  description = "The name of the autoscaling group for the web front end."
  value       = aws_autoscaling_group.front_end.name
}

output "public_nlb_dns" {
  description = "The DNS name of the public Network Load Balancer"
  value       = aws_lb.front_end.dns_name
}