variable "security_group_id" {}

data "aws_security_group" "selected" {
  id = "${var.security_group}"
}

resource "aws_subnet" "subnet" {
  vpc_id     = "${data.aws_security_group.selected.vpc_id}"
  cidr_block = "10.0.1.0/24"
}