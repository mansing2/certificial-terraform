
resource "aws_ecs_service" "ecs_service" {
  name            = "${var.name}"
  cluster         = "${var.ecs_cluster_id}"
  task_definition = "${var.task_definition_arn}"
  desired_count   = "${var.app_count}"
  launch_type     = "FARGATE"

  network_configuration {
    security_groups  = "${var.security_groups}"
    subnets          = "${var.subnet_ids}"
    assign_public_ip = true
  }

  load_balancer {
    target_group_arn = "${var.alb_target_group_arn}"
    #container_name   = "cb-app"
    container_name   = "${var.container_name}"
    container_port   = "${var.app_port}"
  }

   #depends_on =[""${var.depend_on}""]
  #depends_on = [aws_alb_listener.front_end, aws_iam_role_policy_attachment.ecs_task_execution_role]
}