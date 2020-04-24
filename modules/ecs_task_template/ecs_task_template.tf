data "template_file" "ecs_container_definition" {
  template = file("${var.templatefilepath}")
  #"${file("${var.role_policy_file_path}")}"

  vars = {
    app_image      = var.app_image
    app_port       = var.app_port
    fargate_cpu    = var.fargate_cpu
    fargate_memory = var.fargate_memory
    aws_region     = var.aws_region
    container_name = var.container_name
    log_group_name = var.log_group_name
  }
}