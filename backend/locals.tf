locals {
  app_container_name = "nginx"
  app_container_port = "${data.terraform_remote_state.frontend.alb_target_group_port}"
  target_group_arn   = "${data.terraform_remote_state.frontend.alb_target_group_arn}"

  batch_container_name = "batch"
  batch_awslogs_group  = "/ecs-scheduled-task/batch"

  public_subnet_ids = "${data.terraform_remote_state.network.public_subnet_ids}"
  vpc_id            = "${data.terraform_remote_state.network.vpc_id}"
  awslogs_region    = "${data.aws_region.current.name}"
  retention_in_days = 7
}

data "aws_region" "current" {}
