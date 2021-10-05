resource "aws_security_group" "this" {
  name                   = var.name
  vpc_id                 = var.vpc_id
}

resource "aws_security_group_rule" "computed_ingress_rules" {
  security_group_id = aws_security_group.this.id
  type              = "ingress"
  cidr_blocks      = ["0.0.0.0/0"]
  from_port = 80
  to_port   = 80
  protocol  = "tcp"
}

