output "web_server_ip" {
  value = aws_instance.web_server.public_ip
}

output "monitor_server_ip" {
  value = aws_instance.monitor_server.public_ip
}
