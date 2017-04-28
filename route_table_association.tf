# subnet associations for public subnet VPC1
resource "aws_route_table_association" "public_subnet_1" {
    subnet_id = "${aws_subnet.public_subnet_vpc1.id}"
    route_table_id = "${aws_route_table.PublicSubnetTB1.id}"
}

# subnet associations for private subnet VPC1
resource "aws_route_table_association" "private_subnet_1" {
    subnet_id = "${aws_subnet.private_subnet_vpc1.id}"
    route_table_id = "${aws_route_table.PrivateSubnetTB1.id}"
}



# subnet associations for public subnet VPC2
resource "aws_route_table_association" "public_subnet_2" {
    subnet_id = "${aws_subnet.public_subnet_vpc2.id}"
    route_table_id = "${aws_route_table.PublicSubnetTB2.id}"
}

# subnet associations for private subnet VPC2
resource "aws_route_table_association" "private_subnet_2" {
    subnet_id = "${aws_subnet.private_subnet_vpc2.id}"
    route_table_id = "${aws_route_table.PrivateSubnetTB2.id}"
}

# subnet associations for public subnet VPC3
resource "aws_route_table_association" "public_subnet_3" {
    subnet_id = "${aws_subnet.public_subnet_vpc3.id}"
    route_table_id = "${aws_route_table.PublicSubnetTB3.id}"
}

# subnet associations for private subnet VPC3
resource "aws_route_table_association" "private_subnet_3" {
    subnet_id = "${aws_subnet.private_subnet_vpc3.id}"
    route_table_id = "${aws_route_table.PrivateSubnetTB3.id}"
}
