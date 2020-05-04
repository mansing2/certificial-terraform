variable "alarm_name" {}
variable "comparison_operator"{
description = "GreaterThanOrEqualToThreshold or LessThanOrEqualToThreshold "
}
variable "evaluation_periods"{
default="2"
}
variable "metrics_name"{
default="CPUUtilization"
}
variable "namespace"{
default="AWS/ECS"
}
variable "threshold"{
}
variable "cluster_name"{
}
variable "service_name"{
}
variable "alarm_action_target_arn"{
description= "autoscaling policy arn to be triggered on alarm invokation"
}



