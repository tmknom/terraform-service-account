module "mysql" {
  source            = "git::https://github.com/tmknom/terraform-aws-rds-mysql.git?ref=tags/1.1.0"
  identifier        = "primary"
  engine_version    = "5.7.23"
  instance_class    = "db.t2.small"
  allocated_storage = 20
  username          = "root"
  password          = "YouShouldChangePasswordAfterApply!"

  subnet_ids          = ["${local.private_subnet_ids}"]
  vpc_id              = "${local.vpc_id}"
  ingress_cidr_blocks = ["${local.vpc_cidr_block}"]

  # WARNING: If in production environment, you should delete this parameter.
  #          This parameter can cause service down.
  deletion_protection = "${var.enable_destruction ? false : true}"
}
