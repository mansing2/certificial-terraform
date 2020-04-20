
resource "aws_lb" "alb" {
  name               = "${var.name}"
  internal           = false
  load_balancer_type = "${var.type}"
  security_groups    = "${var.securitygroups}"
  subnets            = "${var.subnetids}"

  tags = {
   Name = "${var.name}"
  }
}