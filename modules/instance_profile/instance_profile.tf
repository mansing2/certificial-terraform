
resource "aws_iam_instance_profile" "test_profile" {
  name = "${var.name}"
  role = "${var.role}"
   #roles =  "arn:aws:iam::928554122594:role/EC2_fsx_cloudwatch"
}