resource "aws_iam_role" "role" {
  name               = "${var.role_name}"
  assume_role_policy = "${file("${var.role_policy_file_path}")}"
}



