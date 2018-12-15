locals {
  container_name    = "nginx"
  container_port    = "${data.terraform_remote_state.frontend.alb_target_group_port}"
  target_group_arn  = "${data.terraform_remote_state.frontend.alb_target_group_arn}"
  public_subnet_ids = "${data.terraform_remote_state.network.public_subnet_ids}"
  vpc_id            = "${data.terraform_remote_state.network.vpc_id}"
}
