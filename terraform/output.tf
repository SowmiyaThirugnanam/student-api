output "instance_public_ip" {
  description = "Public IP of EC2 instance"
  value       = aws_instance.student_api.public_ip
}

output "app_url" {
  description = "URL to access the app"
  value       = "http://${aws_instance.student_api.public_ip}:8080/students"
}