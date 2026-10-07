provider "aws" {
  region = var.region
}

resource "aws_instance" "my_server" {
    count = 3
    ami= var.ami
    instance_type = var.instance_type
    key_name= "terraform-key"
    vpc_security_group_ids = [aws_security_group.my_security_group.id]
    tags={
        Name=var.instance_name

    }
  
}