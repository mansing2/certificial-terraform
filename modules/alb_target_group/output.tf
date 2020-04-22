output "target_group_arn" {
  value = "${aws_lb_target_group.alb_targetgroup.arn}"

}

output "target_group_id" {
  value = "${aws_lb_target_group.alb_targetgroup.id}"

}

output "target_group_name" {
  value = "${aws_lb_target_group.alb_targetgroup.name}"

}