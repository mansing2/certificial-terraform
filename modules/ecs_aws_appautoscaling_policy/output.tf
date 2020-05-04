output "policy_arn" {
  value = "${aws_appautoscaling_policy.ecs_autoscaling_policy.arn}"
}

output "policy_name" {
  value = "${aws_appautoscaling_policy.ecs_autoscaling_policy.name}"
}

