#ECS_CLUSTER
module "ecs_cluster01" {
    source                    = "../modules/ecs_cluster"
    name                      ="${var.cluster_name01}"  
}


