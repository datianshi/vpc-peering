resource "aws_route_table" "PublicSubnetTB1" {
    vpc_id = "${aws_vpc.vpc1.id}"

    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = "${aws_internet_gateway.internetGw1.id}"
    }

    tags {
        Name = "public subnet route table1"
    }
}

resource "aws_route_table" "PublicSubnetTB2" {
    vpc_id = "${aws_vpc.vpc2.id}"

    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = "${aws_internet_gateway.internetGw2.id}"
    }

    tags {
        Name = "public subnet route table2"
    }
}
