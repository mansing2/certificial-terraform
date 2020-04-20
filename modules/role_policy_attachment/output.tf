output "role_policy_attachment_id" {
  value = "${aws_iam_policy_attachment.role_policy_attachment.id}"
}

//resource "aws_iam_policy_attachment.role_policy_attachment.id"
output "role_policy_attachment_name" {
  value = "${aws_iam_policy_attachment.role_policy_attachment.name}"
}

//module