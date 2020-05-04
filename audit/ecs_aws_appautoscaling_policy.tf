#scaleUP

module "ecs_autoscaling_up" {
    source                      = "../modules/ecs_aws_appautoscaling_policy"
    name                        =  "${var.autoscale_up_policy_name}"
    resource_id                 = "service/${module.ecs_cluster01.cluster_name}/${module.ecs_service01.service_name}"
    metric_interval_lower_bound = "0"
    scaling_adjustment          = "1"
    
}

#scaledown

module "ecs_autoscaling_down" {
    source                      = "../modules/ecs_aws_appautoscaling_policy"
    name                        =  "${var.autoscale_down_policy_name}"
    resource_id                 ="service/${module.ecs_cluster01.cluster_name}/${module.ecs_service01.service_name}"
    metric_interval_lower_bound = "0"
    scaling_adjustment          = "-1"
}


