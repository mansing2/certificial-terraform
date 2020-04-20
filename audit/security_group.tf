#SecurityGROUP
module "security_group_alb" {
    source                    = "../modules/security_group_cidr"
    tag_name                  =  "alb_security_group"
    vpc_id                    = "${var.vpc_id}"
    cidr                      = "${var.sg_alb_cidr}"
    description               = "application load balancer security group"
    app_port                  = "${var.sg_alb_app_port}"
    
}


module "security_group_ecs_tasks" {
    source                    = "../modules/security_group_sg"
    tag_name                  =  "ecs_tasks_security_groups"
    vpc_id                    = "${var.vpc_id}"
    sg                        = ["${module.security_group_alb.security_group_id}"]
    description               = "ecs tasks security group"
    app_port                  = "${var.sg_alb_app_port}"
    
}


