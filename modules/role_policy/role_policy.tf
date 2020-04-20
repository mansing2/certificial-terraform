resource "aws_iam_policy" "policy" {
  name        = "${var.role_policy_name}"
  description = "${var.role_policy_description}"
  policy      = "${file("${var.role_policy_file_path}")}"
}
