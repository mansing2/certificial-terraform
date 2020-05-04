#cloudwatch alarmservice_cpu_high
# CloudWatch alarm that triggers the autoscaling up policy

module "cw_alarm_cpu_utilization_high" {
    source                    = "../modules/aws_cloudwatch_metric_alarm"
    alarm_name                = "${var.cw_alarm_cpu_utilization_up_name}"
    comparison_operator       = "GreaterThanOrEqualToThreshold"
    #evaluation_periods        =
    #metric_name               =
    #namespace                 =
    #period                    =
    threshold                 = "85"
    cluster_name              = "${module.ecs_cluster01.cluster_name}"
    service_name              = "${module.ecs_service01.service_name}"
    alarm_action_target_arn   = "${module.ecs_autoscaling_up.policy_arn}"          


 }

# cloudwatch alarmservice_cpu_high
# CloudWatch alarm that triggers the autoscaling down policy

module "cw_alarm_cpu_utilization_low" {
    source                    = "../modules/aws_cloudwatch_metric_alarm"
    alarm_name                = "${var.cw_alarm_cpu_utilization_down_name}"
    comparison_operator       = "LessThanOrEqualToThreshold"
    #evaluation_periods        =
    #metric_name               =
    #namespace                 =
    #period                    =
    threshold                 = "10"
    cluster_name              = "${module.ecs_cluster01.cluster_name}"
    service_name              = "${module.ecs_service01.service_name}"
    alarm_action_target_arn   = "${module.ecs_autoscaling_down.policy_arn}"                 
}




