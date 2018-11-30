locals {
  # vpc
  cidr_block = "10.0.0.0/16"

  # certificate
  domain_name_path        = "/terraform/network/domain_name"
  root_domain_name        = "${data.aws_ssm_parameter.root_domain_name.value}"
  zone_id                 = "${data.aws_route53_zone.default.id}"
  certificate_domain_name = "service.${local.root_domain_name}"

  # If false, then certificate will not create.
  enabled_certificate = true
}

data "aws_route53_zone" "default" {
  name = "${local.root_domain_name}."
}

data "aws_ssm_parameter" "root_domain_name" {
  name = "${local.domain_name_path}/root"
}
