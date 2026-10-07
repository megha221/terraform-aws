provider "aws" {
    region = "us-east-1"
  
}

resource "aws_instance" "my_security_group2" {
    ami = "ami-0b6d9d3d33ba97d99"
    instance_type = "t3.micro"
    key_name= "terraform-key"
    vpc_security_group_ids = [aws_security_group.my_security_group2.id]
    user_data = file("user_data.sh")
    tags={
        Name="my_serevr2"

    }
  
}