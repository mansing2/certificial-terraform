output "alarm_arn" {
  value = "${aws_cloudwatch_metric_alarm.cw_alarm.arn}"
}

output "alarm_healthcheck_id" {
  value = "${aws_cloudwatch_metric_alarm.cw_alarm.id}"
}

