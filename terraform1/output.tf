output "public_ip" {
    value = aws_instance.my_server[*].public_ip
    description = "public up of the instace"
  
}
output "public_dns" {
    value = aws_instance.my_server[*].public_dns
  
}

output "all_output" {
    value = aws_instance.my_server[*].id
    description = "all output"
  
}