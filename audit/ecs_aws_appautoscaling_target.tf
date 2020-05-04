module "ecs_aws_appautoscaling_target" {
    source                    = "../modules/ecs_aws_appautoscaling_target"
    min_capacity              = "1"
    max_capacity              = "2"
    resource_id               ="service/${module.ecs_cluster01.cluster_name}/${module.ecs_service01.service_name}"
}


