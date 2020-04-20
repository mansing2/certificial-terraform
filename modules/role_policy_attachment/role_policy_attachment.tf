resource "aws_iam_policy_attachment" "role_policy_attachment" {
  name             = "${var.name}"
  roles            = "${var.roles_names}"
  policy_arn       = "${var.policy_arn}"
}

/*
resource "aws_iam_policy_attachment" "role_policy_attachment_AuditCW_Ad" {
  name       = "test-attachment"
  roles      = ["${aws_iam_role.Audit-CloudWatch-AD.name}"]
  policy_arn = "${aws_iam_policy.Policy_Audit_CloudWatch_AD.arn}"
}
*/

