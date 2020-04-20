output "task_definition_arn" {
  value = "${aws_ecs_task_definition.ecs_task_definition.arn}"

}

output "task_definition_family" {
  value = "${aws_ecs_task_definition.ecs_task_definition.family}"

}

output "task_definition_revision" {
  value = "${aws_ecs_task_definition.ecs_task_definition.revision}"

}
