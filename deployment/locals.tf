locals {
  github_token        = "${data.aws_ssm_parameter.github_token.value}"
  github_organization = "${data.aws_ssm_parameter.github_organization.value}"
  cluster_name        = "${data.terraform_remote_state.backend.ecs_cluster_id}"
  service_name        = "${data.terraform_remote_state.backend.ecs_service_name}"
}

data "aws_ssm_parameter" "github_token" {
  name = "/terraform/deployment/github/token"
}

data "aws_ssm_parameter" "github_organization" {
  name = "/terraform/deployment/github/organization"
}
