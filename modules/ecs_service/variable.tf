variable "name" {default ="ecs-service"}
variable "ecs_cluster_id" {}
variable "task_definition_arn"{}
variable "app_count"{}
variable "alb_target_group_arn"{}
variable "container_name"{
}
variable "app_port"{}
variable "security_groups"{
type="list"
}

variable "subnet_ids"{
type="list"
}

variable "depend_on"{
default = []
type = "list"
}
