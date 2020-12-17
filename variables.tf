variable "region" {
  default = "eu-north-1"
}
variable "environment" {
  default = "Development"
}
variable "vpc_cidr" {
  description = "VPC cidr block"
}
variable "public_subnet_1_cidr" {
  description = "Public Subnet 1 cidr block"
}

variable "private_subnet_1_cidr" {
  description = "Private Subnet 1 cidr block"
}

variable "instance_type" {
  type = string

}
variable "instance_ami" {
  type = string

}
variable "keyname" {
  default = "tf-jenkins-aws"
}