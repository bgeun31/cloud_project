output "web_server_ip" {
  value = aws_instance.web.public_ip
}

output "monitor_server_ip" {
  value = aws_instance.monitor.public_ip
}
