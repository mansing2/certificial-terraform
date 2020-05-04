resource "aws_appautoscaling_target" "target" {
  service_namespace  = "ecs"
  resource_id        = "${var.resource_id}"
  scalable_dimension = "ecs:service:DesiredCount"
  #role_arn           = "${var.role_arn}"
  min_capacity       = "${var.min_capacity}"
  max_capacity       = "${var.max_capacity}"
}
