resource "aws_security_group" "security_group" {
    name            = "${var.tag_name}"
    description     = "${var.description}"
    vpc_id          = "${var.vpc_id}"
    
    ingress {
    protocol    = "tcp"
    from_port   = "${var.app_port}"
    to_port     = "${var.app_port}"
    cidr_blocks = "${var.cidr}"
  }

  egress {
    protocol    = "-1"
    from_port   = 0
    to_port     = 0
    cidr_blocks = ["0.0.0.0/0"]
  }
     tags = {
        Name        = "${var.tag_name}"
    }

}
