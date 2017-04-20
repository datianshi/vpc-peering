# Create aws instances

data "template_file" "strongswan_user_data" {
  template = "${file("initiate_strongswan.tpl")}"
}

resource "aws_instance" "strongswan" {
    ami = "${var.strongswan_instance_ami}"
    availability_zone = "${var.az}"
    instance_type = "${var.strongswan_instance_type}"
    key_name = "${var.aws_key_name}"
    vpc_security_group_ids = ["${aws_security_group.peering.id}"]
    subnet_id = "${aws_subnet.public_subnet_vpc1.id}"
    associate_public_ip_address = true
    user_data = "${data.template_file.strongswan_user_data.rendered}"
    root_block_device {
        volume_size = 20
    }
    tags {
        Name = "peering instance"
    }
}

resource "aws_eip" "eip" {
  vpc = true
  instance                  = "${aws_instance.strongswan.id}"
}
