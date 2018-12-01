locals {
  domain_name_path        = "/terraform/network/domain_name"
  root_domain_name        = "${data.aws_ssm_parameter.root_domain_name.value}"
  zone_id                 = "${data.aws_route53_zone.default.id}"
  vpc_id                  = "${data.terraform_remote_state.network.vpc_id}"
  subnet_ids              = "${data.terraform_remote_state.network.public_subnet_ids}"
  certificate_arn         = "${data.terraform_remote_state.network.alb_certificate_arn}"
  s3_access_log_bucket_id = "${data.terraform_remote_state.audit.s3_access_log_bucket_id}"
  account_id              = "${data.aws_caller_identity.current.account_id}"
}

data "aws_route53_zone" "default" {
  name = "${local.root_domain_name}."
}

data "aws_ssm_parameter" "root_domain_name" {
  name = "${local.domain_name_path}/root"
}

data "aws_caller_identity" "current" {}
