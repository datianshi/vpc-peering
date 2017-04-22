resource "aws_elb" "elb" {
  name               = "elbtesting"

  listener {
    instance_port     = 22
    instance_protocol = "tcp"
    lb_port           = 22
    lb_protocol       = "tcp"
  }

  health_check {
    healthy_threshold   = 2
    unhealthy_threshold = 2
    timeout             = 3
    target              = "TCP:22"
    interval            = 30
  }

  internal            = true
  security_groups     = ["${aws_security_group.elb.id}"]
  subnets             = ["${aws_subnet.public_subnet_vpc2.id}"]

  instances                   = ["${aws_instance.test_machine_vpc2.id}"]
  cross_zone_load_balancing   = false
  idle_timeout                = 400
  connection_draining         = true
  connection_draining_timeout = 400

  tags {
    Name = "elb to load for the private network"
  }
}
