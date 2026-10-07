output "elastic_server_ip" {
    value = aws_instance.elastic_server_ip.public_ip
  
}