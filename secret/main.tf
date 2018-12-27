# Customer master keys
module "default_key" {
  source = "git::https://github.com/tmknom/terraform-aws-kms.git?ref=tags/1.1.0"
  name   = "default"
}

# Domain name
module "root_domain_name" {
  source = "git::https://github.com/tmknom/terraform-aws-ssm-parameter.git?ref=tags/1.1.0"
  name   = "${local.domain_name_path}/root"
  value  = "${local.uninitialized_domain_name}"
}

module "uninitialized_domain_name" {
  source = "git::https://github.com/tmknom/terraform-aws-ssm-parameter.git?ref=tags/1.1.0"
  name   = "${local.domain_name_path}/uninitialized"
  value  = "${local.uninitialized_domain_name}"
  type   = "String"
}

# GitHub
module "github_token" {
  source = "git::https://github.com/tmknom/terraform-aws-ssm-parameter.git?ref=tags/1.1.0"
  name   = "${local.github_path}/token"
}

module "github_organization" {
  source = "git::https://github.com/tmknom/terraform-aws-ssm-parameter.git?ref=tags/1.1.0"
  name   = "${local.github_path}/organization"
}
