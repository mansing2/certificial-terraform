resource "aws_alb_listener" "alb_listener" {
  load_balancer_arn = "${var.load_balancer_arn}"
  port              = "${var.app_port}"
  protocol          = "HTTP"

  default_action {
    target_group_arn = "${var.alb_target_group_arn}"
    type             = "forward"
  }
}