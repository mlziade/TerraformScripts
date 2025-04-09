output "instance_id" {
  description = "ID of the EC2 instance"
  value       = aws_instance.<<RESOURCE_NAME>>.id
}

output "public_ip" {
  description = "Public IP address of the instance"
  value       = aws_instance..<<RESOURCE_NAME>>.public_ip
}