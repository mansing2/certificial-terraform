output "role_policy_id" {
  value = "${aws_iam_policy.policy.id}"
}

output "role_policy_arn" {
  value = "${aws_iam_policy.policy.arn}"
}
