
#role
module "role_ecs" {
    source                    = "../modules/role"
    role_name                 ="${var.ecs_role_name}"  
    role_policy_file_path     ="${var.ecs_role_policy_file_path}"                    
}

#role_policy

module "role_policy_ecs_task" {
    source                    = "../modules/role_policy"
    role_policy_name          ="${var.ecs_policy_name}"  
    role_policy_description   ="${var.ecs_policy_description}"
    role_policy_file_path     ="${var.ecs_policy_file_path}"                    
}

#role_policy_attachment

module "role_policy_attachment_ecs_task" {
    source                    = "../modules/role_policy_attachment"
     name             = "${var.ecs_role_policy_attachment_name}"
     roles_names            = ["${module.role_ecs.role_name}"]
     policy_arn       = "${module.role_policy_ecs_task.role_policy_arn}"              
}



/*
resource "aws_iam_policy_attachment" "role_policy_attachment" {
  name             = "${var.ecs_role_policy_attachment_name}"
  roles            = ["${module.role_ecs.role_name}"]
  policy_arn       = "${module.role_policy_ecs_task.role_policy_arn}"
}

*/