

resource "aws_lb_target_group" "alb_targetgroup" {
  name        = "${var.name}"
  port        = 80
  protocol    = "HTTP"
  target_type = "ip"
  vpc_id      = "${var.vpc_id}"

   tags = {
        Name    = "${var.name}"
    }

  health_check {
    healthy_threshold   = "3"
    interval            = "30"
    protocol            = "HTTP"
    matcher             = "200"
    timeout             = "3"
    path                = "${var.health_check_path}"
    unhealthy_threshold = "2"
  }
}



