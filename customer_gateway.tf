resource "aws_customer_gateway" "customer_gateway" {
  bgp_asn    = 65000
  ip_address = "${aws_eip.eip.public_ip}"
  type       = "ipsec.1"

  tags {
    Name = "customer-gateway"
  }
}
