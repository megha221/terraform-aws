resource "aws_security_group" "my_security_group" {
    name = "web-sg"
    description = "security group for 22,80,443 ports"

    vpc_id= var.vpc_id

    ingress  {
        description= "ssh access"
        from_port= 22
        to_port=22
        protocol= "tcp"
        cidr_blocks=["0.0.0.0/0"]
    }

    # ingress 80
    ingress {
        description =" http access"
        from_port= 80
        to_port=80
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    #https: 443
    ingress{
        description = "https access"
        from_port= 443
        to_port= 443
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    egress{
        description = "allow all outbound traffic"
        from_port=0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }

    tags={
        Name="web-sg"

    }

}