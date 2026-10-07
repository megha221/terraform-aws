resource "aws_security_group" "my_security_group2" {
    name = "web-sg2"
    description = "security group for 22,80,443 ports"

    vpc_id= "vpc-03486abcae956919e"

    ingress {
        description = "ssh access"
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    ingress {
        from_port = 80
        to_port = 80
        description = "http access"
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    egress{
        description = "allow all outbound traffic"
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
  
}