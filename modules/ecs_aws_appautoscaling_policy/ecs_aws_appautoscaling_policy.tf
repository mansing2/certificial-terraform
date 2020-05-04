resource "aws_appautoscaling_policy" "ecs_autoscaling_policy" {
  name               = "${var.name}"
  service_namespace  = "ecs"
  resource_id        = "${var.resource_id}"
  scalable_dimension = "ecs:service:DesiredCount"

  step_scaling_policy_configuration {
    adjustment_type         = "ChangeInCapacity"
    cooldown                = 60
    metric_aggregation_type = "Maximum"

    step_adjustment {
      metric_interval_lower_bound = "${var.metric_interval_lower_bound}"
      scaling_adjustment          = "${var.scaling_adjustment}"
    }
  }

  #depends_on = [aws_appautoscaling_target.target]
}


