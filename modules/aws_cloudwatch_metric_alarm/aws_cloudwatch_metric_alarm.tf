resource "aws_cloudwatch_metric_alarm" "cw_alarm" {
  alarm_name          = "${var.alarm_name}"
  comparison_operator = "${var.comparison_operator}"
  evaluation_periods  = "${var.evaluation_periods}"
  metric_name         = "${var.metrics_name}"
  namespace           = "${var.namespace}"
  period              = "60"
  statistic           = "Average"
  threshold           = "${var.threshold}"

  dimensions = {
    ClusterName = "${var.cluster_name}"
    ServiceName = "${var.service_name}"
  }

  alarm_actions = ["${var.alarm_action_target_arn}"]
}

