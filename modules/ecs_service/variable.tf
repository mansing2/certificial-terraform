variable "name" {default ="ecs-service"}
variable "ecs_cluster_id" {}
variable "task_definition_arn"{}
variable "app_count"{}
variable "alb_target_group_arn"{}
#variable "container_name"{
#default="container_on_ecs"
#}
variable "app_port"{}
variable "security_groups"{
type="list"
}

variable "subnet_ids"{
type="list"
}
