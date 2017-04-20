resource "aws_vpc" "vpc1" {
    cidr_block = "${var.vpc1_cidr}"
    enable_dns_hostnames = true
    tags {
        Name = "vpc1"
    }
}

resource "aws_internet_gateway" "internetGw1" {
    vpc_id = "${aws_vpc.vpc1.id}"
    tags {
        Name = "vpc1-internet-gateway"
    }
}

resource "aws_vpc" "vpc2" {
    cidr_block = "${var.vpc2_cidr}"
    enable_dns_hostnames = true
    tags {
        Name = "vpc2"
    }
}

resource "aws_internet_gateway" "internetGw2" {
    vpc_id = "${aws_vpc.vpc2.id}"
    tags {
        Name = "vpc2-internet-gateway"
    }
}

resource "aws_vpn_gateway" "vpn_gw" {
  vpc_id = "${aws_vpc.vpc2.id}"

  tags {
    Name = "vpn_gateway_vpc2"
  }
}
