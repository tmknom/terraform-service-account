module "nginx_ecr" {
  source          = "git::https://github.com/tmknom/terraform-aws-ecr.git?ref=tags/1.0.0"
  name            = "nginx"
  tag_prefix_list = ["release"]
}

module "codebuild" {
  source = "git::https://github.com/tmknom/terraform-aws-codebuild.git?ref=tags/1.2.0"
  name   = "app"
}

module "codepipeline" {
  source               = "git::https://github.com/tmknom/terraform-aws-codepipeline-for-ecs.git?ref=tags/1.1.0"
  name                 = "app"
  artifact_bucket_name = "${aws_s3_bucket.artifact.id}"
  github_oauth_token   = "${local.github_token}"
  repository_owner     = "${local.github_organization}"
  repository_name      = "terraform-service-account"
  project_name         = "${module.codebuild.codebuild_project_id}"
  cluster_name         = "${local.cluster_name}"
  service_name         = "${local.service_name}"
}

# https://www.terraform.io/docs/providers/aws/r/s3_bucket.html
resource "aws_s3_bucket" "artifact" {
  bucket = "artifact-${data.aws_caller_identity.current.account_id}"
  acl    = "private"

  # WARNING: If in production environment, you should delete this parameter.
  #          This parameter can cause be lost artifact.
  force_destroy = "${var.enable_destruction}"
}

data "aws_caller_identity" "current" {}
