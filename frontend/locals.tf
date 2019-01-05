locals {
  alb_domain_name         = "service.${local.root_domain_name}"
  domain_name_path        = "/terraform/network/domain_name"
  root_domain_name        = "${data.aws_ssm_parameter.root_domain_name.value}"
  zone_id                 = "${data.aws_route53_zone.default.id}"
  vpc_id                  = "${data.terraform_remote_state.network.vpc_id}"
  subnet_ids              = "${data.terraform_remote_state.network.public_subnet_ids}"
  s3_access_log_bucket_id = "${data.terraform_remote_state.audit.s3_access_log_bucket_id}"
  account_id              = "${data.aws_caller_identity.current.account_id}"

  # If false, then certificate will not create.
  enabled_certificate = true

  enabled_paid_resources = "${var.enabled_paid_resources ? 1 : 0}"
}

data "aws_route53_zone" "default" {
  name = "${local.root_domain_name}."
}

data "aws_ssm_parameter" "root_domain_name" {
  name = "${local.domain_name_path}/root"
}

data "aws_caller_identity" "current" {}
