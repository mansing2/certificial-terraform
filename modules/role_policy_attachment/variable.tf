variable "name" {
default ="ecs_task_role_policy_attachment"
}
variable "roles_names" {
type ="list"
#default="../policy_docs/policy-Audit-CloudWatch-AD.json"
}
variable "policy_arn"{}


