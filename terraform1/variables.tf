variable "region" {
    description = "aws region"
    type = string
    default = "us-east-1"
  
}

variable "ami" {
    type = string
    description = "application image"
    default = "ami-0b6d9d3d33ba97d99"
  
}

variable "instance_type" {
    type = string
    description = "instance type"
    default = "t3.micro"
    
  
}

variable "instance_name" {
    type = string
    description = "instance name"
    default = "my_server"
  
}

variable "vpc_id" {
    type = string
    description = "vpc id"
    default = "vpc-03486abcae956919e"
  
}