variable "aws_access_key" {}
variable "aws_secret_key" {}
variable "aws_region" {}
variable "aws_key_name" {}

variable "az" {
  description = "Availability zone"
  default = "us-west-2a"
}

variable "vpc1_cidr" {
    description = "VPC 1 cidr"
    default = "10.0.0.0/24"
}

variable "vpc2_cidr" {
    description = "VPC 2 cidr"
    default = "10.0.2.0/24"
}

variable "public_subnet_cidr_vpc1" {
  description = "VPC 1 public subnet cidr"
  default = "10.0.0.0/25"
}

variable "private_subnet_cidr_vpc1" {
  description = "VPC 1 private subnet cidr"
  default = "10.0.0.128/26"
}


variable "public_subnet_cidr_vpc2" {
  description = "VPC 2 pubic subnet cidr"
  default = "10.0.2.0/25"
}

variable "private_subnet_cidr_vpc2" {
  description = "VPC 2 private subnet cidr"
  default = "10.0.2.128/26"
}


variable "strongswan_instance_type" {
  description = "strongswan isntance type"
  default = "m3.medium"
}

variable "strongswan_instance_ami" {
  description = "strongswan isntance ami - ubuntu"
  default = "ami-efd0428f"
}

variable "nat_instance_ami" {
  description = "nat ami instance - ec2"
  default = "ami-11fd2e71"
}
