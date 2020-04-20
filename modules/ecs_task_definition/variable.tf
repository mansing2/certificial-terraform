variable "tag_name" {default ="ecs_task01"}
variable "execution_role_arn" {}
variable "fargate_cpu"{
  description = "Fargate instance CPU units to provision (1 vCPU = 1024 CPU units)"
  default     = "1024"
}
variable "fargate_memory"{
  description = "Fargate instance memory to provision (in MiB)"
  default     = "2048"
}
variable "containerdefinition_template_rendered"{
description = "template containing detail about container rendered"
}

