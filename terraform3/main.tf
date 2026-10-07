provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "elastic_server_ip" {
  ami= "ami-0b6d9d3d33ba97d99"
  instance_type = "t3.micro"
  vpc_security_group_ids = [aws_security_group.my_security.id]
  key_name= "terraform-key"
  user_data = file("./user_data.sh")

  tags={
    Name="elastic_ip server"
  }
}