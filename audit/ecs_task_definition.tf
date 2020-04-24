#CW LOG Group 
module "cw_log_group01" {
    source                    = "../modules/cw_log_group"
    name                      ="/ecs/${var.container_name}"
}

#ECS task template
module "task_template01" {
    source                    = "../modules/ecs_task_template"
    templatefilepath          = "${var.templatefilepath}" 
    app_image                 = "${var.app_image}"
    app_port                  = "${var.sg_alb_app_port}"
    fargate_cpu               = "${var.fargate_cpu}"
    fargate_memory            = "${var.fargate_memory}"
    aws_region                = "${var.aws_region}"
    container_name            = "${var.container_name}"
    #log_group_name            = "/ecs/container1"
    log_group_name           = "${module.cw_log_group01.cw_log_group_name}"
}


#ECS Task Definition
module "ecs_task_definition01" {
    source                    = "../modules/ecs_task_definition"
    tag_name                  = "${var.ecs_task_definition_name}"
    execution_role_arn        = "${module.role_ecs.role_arn}"
    fargate_cpu               = "${var.fargate_cpu}"
    fargate_memory            = "${var.fargate_memory}"
    containerdefinition_template_rendered   = "${module.task_template01.rendered}"
}


