# subnet associations for public subnet
resource "aws_route_table_association" "public_subnet_1" {
    subnet_id = "${aws_subnet.public_subnet_vpc1.id}"
    route_table_id = "${aws_route_table.PublicSubnetTB1.id}"
}

# subnet associations for public subnet 2
resource "aws_route_table_association" "public_subnet_2" {
    subnet_id = "${aws_subnet.public_subnet_vpc2.id}"
    route_table_id = "${aws_route_table.PublicSubnetTB2.id}"
}
