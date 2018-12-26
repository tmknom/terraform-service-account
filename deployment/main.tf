module "nginx_ecr" {
  source          = "git::https://github.com/tmknom/terraform-aws-ecr.git?ref=tags/1.0.0"
  name            = "nginx"
  tag_prefix_list = ["release"]
}

module "codebuild" {
  source = "git::https://github.com/tmknom/terraform-aws-codebuild.git?ref=tags/1.2.0"
  name   = "app"
}
