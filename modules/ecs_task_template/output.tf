output "rendered" {
  value = "${data.template_file.ecs_container_definition.rendered}"

}

output "vars" {
  value = "${data.template_file.ecs_container_definition.vars}"

}

output "template" {
  value = "${data.template_file.ecs_container_definition.template}"

}

