
resource "aws_cloudwatch_log_group" "cw_log_group" {
  name = "${var.name}"

  tags = {
       Name = "${var.name}"

  }
}