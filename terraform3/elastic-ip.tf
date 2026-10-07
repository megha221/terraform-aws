resource "aws_eip" "lb" {
    instance = aws_instance.elastic_server_ip.id
    domain="vpc"
  
}