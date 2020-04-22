#ApplicationLoadBalancer
module "alb01" {
    source                    = "../modules/alb"
    name                      = "${var.alb_name}"
    subnetids                 = "${var.alb_subnet_ids}"
    securitygroups           = ["${module.security_group_alb.security_group_id}"]
}

#alb_target_group

module "targetgroup01" {
    source                    = "../modules/alb_target_group"
    name                      = "${var.alb_target_group_name}"
    vpc_id                    = "${var.vpc_id}"
    health_check_path         = "${var.alb_tg_health_check_path}"
}

#alb_listener 
module "alblistener01" {
    source                    = "../modules/alb_listener"
    load_balancer_arn         = "${module.alb01.alb_arn}"
    alb_target_group_arn      = "${module.targetgroup01.target_group_id}"
    app_port                  = "${var.sg_alb_app_port}"
}

