variable "vpc_cidr_block" {
  
description = "this is cidr block of created vpc "
type = string
default = "10.0.0.0/16"
}

variable "subnet_cidr_block" {

description = "this is cidr block of created subnet "
type = string
default = "10.0.0.0/24"
}

variable "instance_type" {
  description = "This describes the instance type"
  type = string
  default = "t3.micro"
}

variable "ami_id" {
    description = "This describes the ami image which Amazon Linux 2023 AMI"
    type = string
    default = "ami-090abff6ae1141d7d"
}

variable "ssh_port" {
  description = "SSH Port"
  type = number
  default = 22
}
variable "HTTP_port" {
  description = "HTTP Port"
  type = number
  default = 80
}