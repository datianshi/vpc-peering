resource "aws_route_table" "PublicSubnetTB1" {
    vpc_id = "${aws_vpc.vpc1.id}"

    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = "${aws_internet_gateway.internetGw1.id}"
    }

    route {
        cidr_block = "${var.vpc2_cidr}"
        instance_id = "${aws_instance.strongswan.id}"
    }


    tags {
        Name = "public subnet route table1"
    }
}

resource "aws_route_table" "PrivateSubnetTB1" {
    vpc_id = "${aws_vpc.vpc1.id}"

    route {
        cidr_block = "${var.public_subnet_cidr_vpc2}"
        instance_id = "${aws_instance.strongswan.id}"
    }


    tags {
        Name = "private subnet route table1"
    }
}


resource "aws_route_table" "PublicSubnetTB2" {
    vpc_id = "${aws_vpc.vpc2.id}"

    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = "${aws_internet_gateway.internetGw2.id}"
    }

    route {
        cidr_block = "${var.vpc1_cidr}"
        gateway_id = "${aws_vpn_gateway.vpn_gw.id}"
    }

    route {
        cidr_block = "${var.vpc3_cidr}"
        vpc_peering_connection_id = "${aws_vpc_peering_connection.provider_tenant.id}"
    }


    tags {
        Name = "public subnet route table2"
    }
}

resource "aws_route_table" "PrivateSubnetTB2" {
    vpc_id = "${aws_vpc.vpc2.id}"

    route {
        cidr_block = "0.0.0.0/0"
        instance_id = "${aws_instance.nat.id}"
    }

    tags {
        Name = "private subnet route table2"
    }
}

resource "aws_route_table" "PublicSubnetTB3" {
    vpc_id = "${aws_vpc.vpc3.id}"

    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = "${aws_internet_gateway.internetGw3.id}"
    }

    route {
        cidr_block = "${var.vpc2_cidr}"
        vpc_peering_connection_id = "${aws_vpc_peering_connection.provider_tenant.id}"
    }

    route {
        cidr_block = "${var.vpc1_cidr}"
        vpc_peering_connection_id = "${aws_vpc_peering_connection.provider_tenant.id}"
    }
    

    tags {
        Name = "public subnet route table3"
    }
}

resource "aws_route_table" "PrivateSubnetTB3" {
    vpc_id = "${aws_vpc.vpc3.id}"

    route {
        cidr_block = "${var.vpc2_cidr}"
        vpc_peering_connection_id = "${aws_vpc_peering_connection.provider_tenant.id}"
    }

    route {
        cidr_block = "${var.vpc1_cidr}"
        vpc_peering_connection_id = "${aws_vpc_peering_connection.provider_tenant.id}"
    }



    tags {
        Name = "private subnet route table3"
    }
}
