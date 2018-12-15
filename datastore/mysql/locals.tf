locals {
  private_subnet_ids = "${data.terraform_remote_state.network.private_subnet_ids}"
  vpc_id             = "${data.terraform_remote_state.network.vpc_id}"
  vpc_cidr_block     = "${data.terraform_remote_state.network.vpc_cidr_block}"
}
