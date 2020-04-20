variable "tag_name" {}
variable "vpc_id" {}
variable "description"{}
variable "cidr"{
 type="list" 
 default=["0.0.0.0/0"]
}
variable "app_port"{
default="3000"
}