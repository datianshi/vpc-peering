resource "aws_subnet" "public_subnet_vpc1" {
    vpc_id = "${aws_vpc.vpc1.id}"

    cidr_block = "${var.public_subnet_cidr_vpc1}"
    availability_zone = "${var.az}"

    tags {
        Name = "vpc1 subnet"
    }
}

resource "aws_subnet" "private_subnet_vpc1" {
    vpc_id = "${aws_vpc.vpc1.id}"

    cidr_block = "${var.private_subnet_cidr_vpc1}"
    availability_zone = "${var.az}"

    tags {
        Name = "vpc1 subnet"
    }
}


resource "aws_subnet" "public_subnet_vpc2" {
    vpc_id = "${aws_vpc.vpc2.id}"

    cidr_block = "${var.public_subnet_cidr_vpc2}"
    availability_zone = "${var.az}"

    tags {
        Name = "vpc2 subnet"
    }
}

resource "aws_subnet" "private_subnet_vpc2" {
    vpc_id = "${aws_vpc.vpc2.id}"

    cidr_block = "${var.private_subnet_cidr_vpc2}"
    availability_zone = "${var.az}"

    tags {
        Name = "vpc2 subnet"
    }
}
