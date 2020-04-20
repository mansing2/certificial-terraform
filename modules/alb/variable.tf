variable "name" {}
variable "type"{
default = "application"
}
variable  "securitygroups"{
 type= "list"
 }
variable "subnetids"{
type = "list"
}
