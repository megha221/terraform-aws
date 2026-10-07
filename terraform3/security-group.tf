resource "aws_security_group" "my_security" {
    name = "my-web-sg"
    description = "secutiy for ec2 elastic ip"

    vpc_id = "vpc-03486abcae956919e"

    ingress {
        from_port = 22
        to_port=22
        description = "ssh port open"
        cidr_blocks = ["0.0.0.0/0"]
        protocol = "tcp"
    }
    ingress {
        from_port = 80
        to_port = 80
        description = "http port"
        cidr_blocks = ["0.0.0.0/0"]
        protocol = "tcp"
    }
    ingress {
        from_port = 443
        to_port = 443
        description = "https port"
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
        description = "egress"
    }
  
}