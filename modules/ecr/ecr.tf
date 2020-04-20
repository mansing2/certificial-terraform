resource "aws_ecr_repository" "ecr" {
  name                 = "${var.tag_name}"
  #image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }

  tags = {
        Name    = "${var.tag_name}"
    }

}