#ECS_SERVICE

module "ecs_service01" {
    source                    = "../modules/ecs_service"
    name                      ="${var.ecs_service_name}"  
    ecs_cluster_id            ="${module.ecs_cluster01.cluster_id}"
    task_definition_arn       ="${module.ecs_task_definition01.task_definition_arn}"
    app_count                 ="${var.app_count}"
    security_groups           =["${module.security_group_ecs_tasks.security_group_id}"]
    subnet_ids                ="${var.ecs_service_subnet_ids}"
    alb_target_group_arn      ="${module.targetgroup01.target_group_arn}"
    #container_name            ="${var.container_name}"
    app_port                  ="${var.sg_alb_app_port}"
}


