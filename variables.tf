variable "aws_access_key" {}
variable "aws_secret_key" {}
variable "aws_region" {}
variable "aws_key_name" {}
variable "aws_account_id" {}

variable "az" {
  description = "Availability zone"
  default = "us-west-2a"
}

variable "vpc1_cidr" {
    description = "VPC 1 cidr - Data Center"
    default = "10.0.0.0/24"
}

variable "vpc2_cidr" {
    description = "VPC 2 cidr - Provider network"
    default = "10.0.2.0/24"
}

variable "vpc3_cidr" {
    description = "VPC 3 cidr - Tenant network"
    default = "192.168.0.0/16"
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

variable "public_subnet_cidr_vpc3" {
  description = "VPC 3 public subnet cidr"
  default = "192.168.0.0/24"
}

variable "private_subnet_cidr_vpc3" {
  description = "VPC 3 private subnet cidr"
  default = "192.168.1.0/24"
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
  default = "ami-1c2a9e7c"
}

variable "nginx_instance_ami" {
  description = "nat ami instance - ec2"
  default = "ami-06f5e367"
}
