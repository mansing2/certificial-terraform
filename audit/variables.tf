variable "access_key"{
default=""
} 
variable "secret_key"{
default=""
}
variable "aws_region"{
default = "us-east-1"
}

/*variable "state_backup_s3bucket"{
description ="s3 bucket to store tfstate file" 
value       =""
}
*/

variable "vpc_id"{
default="vpc-3660014c"
}

#ecs_cluster_name

variable "cluster_name01"{
default ="cluster01"
}

variable "sg_alb_app_port" {
  description = "Port exposed by the docker image to redirect traffic to"
  default     = 80
}
variable "sg_alb_cidr"{
 description = "List Of cidr to allow traffic from"
 type = "list" 
 default=["0.0.0.0/0"]
}
 
  
variable "alb_name"{
 description ="Application Load Balancer Name "
 default="ecs-application-load-balancer"
}

variable "alb_subnet_ids"{
type ="list"
default=["subnet-0b11f446","subnet-b0a8f89e"]
}

#ALB Target Group

variable "alb_target_group_name"{
 description ="Application Load Balancer TargetGroup Name "
 default="target-group-ecs-01"
}


variable "alb_tg_health_check_path"{
 description ="ALB Target group Health Check Path "
 default="/"
}



/*
#sg_kpmg_audit_dev

variable "sg_kpmg_audit_dev_tag_name" {
default="kpmg-audit-dev"
}

variable "sg_kpmg_audit_dev_description"{
default="Rules for windows dev Instances"
}

*/

variable "ecs_service_subnet_ids"{
type="list"
description= "private subnets for ecs task"
default=["subnet-c72cb5f9","subnet-b0a8f89e"]
}

variable "ecs_service_name"{
description="Name of ecs  service"
default = "ecs_service_01"
}

#template variables for ecs task definition
variable "templatefilepath"{
 description ="path to template file to be used to create task definition"
 default     ="../policy_docs/ecs_container_def.json.tpl" 
}

variable "ecs_task_definition_name"{
 default ="ecs_task01"
}

variable "app_count" {
  description = "Number of docker containers to run"
  default     = "2"
}


variable "fargate_cpu" {
  description = "Fargate instance CPU units to provision (1 vCPU = 1024 CPU units)"
  default     = "1024"
}

variable "fargate_memory" {
  description = "Fargate instance memory to provision (in MiB)"
  default     = "2048"
}
 
 variable "app_image" {
  description = "Docker image to run in the ECS cluster"
  default     = "nginx:latest"
}

variable "container_name" {
  description = "name of container for ecs service"
  default     = "container01"
}

#ecs_Role 
variable "ecs_role_name" {default ="ecs-task"}

variable "ecs_role_policy_file_path" {default="../policy_docs/Role-policy-ecs-task.json"}



##role_policy

variable "ecs_policy_name" {
default ="Policy-ecs-task"
}
variable "ecs_policy_file_path" {
default="../policy_docs/policy-ecs-task.json"
}
variable "ecs_policy_description"{
default="policy for role ecs-task"
}

#role_policy_attachment 
variable "ecs_role_policy_attachment_name"{
description="role policy attachment name for role ecs-task"
default="ecs_task_role_policy_attachment"
}