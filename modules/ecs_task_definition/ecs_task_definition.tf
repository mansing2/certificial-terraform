
resource "aws_ecs_task_definition" "ecs_task_definition" {
  family                   = "${var.tag_name}"
  execution_role_arn       = "${var.execution_role_arn}"
  network_mode             = "awsvpc"
  requires_compatibilities = ["FARGATE"]
  cpu                      = "${var.fargate_cpu}"
  memory                   = "${var.fargate_memory}"
  container_definitions    = "${var.containerdefinition_template_rendered}"

 tags = {
        Name    = "${var.tag_name}"
    }
}