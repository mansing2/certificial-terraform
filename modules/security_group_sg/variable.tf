variable "tag_name" {}
variable "vpc_id" {}
variable "description"{}
variable "sg"{
 type="list" 
 description ="list of security groups to allow traffic from "
}
variable "app_port"{
default="3000"
}