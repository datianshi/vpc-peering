resource "aws_security_group" "peering" {
    name = "For VPN peering"
    description = "Allow incoming connections for VPN peering."
    vpc_id = "${aws_vpc.vpc1.id}"
    tags {
        Name = "vpn peering"
    }
    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    ingress {
        from_port = 443
        to_port = 443
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    ingress {
        from_port = 943
        to_port = 943
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    ingress {
        from_port = 1194
        to_port = 1194
        protocol = "udp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    egress {
        from_port = 0
        to_port = 0
        protocol = -1
        cidr_blocks = ["0.0.0.0/0"]
    }    
}

resource "aws_security_group" "regular_ssh" {
    name = "For Testing"
    description = "Test VMs"
    vpc_id = "${aws_vpc.vpc2.id}"
    tags {
        Name = "regular ssh"
    }
    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
}
