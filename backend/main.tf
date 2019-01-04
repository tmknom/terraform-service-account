# https://www.terraform.io/docs/providers/aws/r/ecs_cluster.html
resource "aws_ecs_cluster" "default" {
  name = "default"
}

module "ecs_fargate" {
  source                = "git::https://github.com/tmknom/terraform-aws-ecs-fargate.git?ref=tags/1.2.0"
  name                  = "app"
  desired_count         = 2
  container_name        = "${local.app_container_name}"
  container_port        = "${local.app_container_port}"
  cluster               = "${aws_ecs_cluster.default.arn}"
  subnets               = ["${local.public_subnet_ids}"]
  target_group_arn      = "${local.target_group_arn}"
  vpc_id                = "${local.vpc_id}"
  container_definitions = "${data.template_file.app_container_definitions.rendered}"

  assign_public_ip = true
}

data "template_file" "app_container_definitions" {
  template = "${file("${path.module}/container_definitions/app.json")}"

  vars {
    container_name = "${local.app_container_name}"
    container_port = "${local.app_container_port}"
    image          = "${module.nginx_ecr.ecr_repository_url}:latest"
  }
}

module "nginx_ecr" {
  source          = "git::https://github.com/tmknom/terraform-aws-ecr.git?ref=tags/1.0.0"
  name            = "nginx"
  tag_prefix_list = ["release"]
}

module "ecs_scheduled_task" {
  source                = "git::https://github.com/tmknom/terraform-aws-ecs-scheduled-task.git?ref=tags/1.0.0"
  schedule_expression   = "rate(30 minutes)"
  name                  = "${local.batch_container_name}"
  container_definitions = "${data.template_file.batch_container_definitions.rendered}"
  cluster_arn           = "${aws_ecs_cluster.default.arn}"
  subnets               = ["${local.public_subnet_ids}"]

  assign_public_ip = true
}

data "template_file" "batch_container_definitions" {
  template = "${file("${path.module}/container_definitions/batch.json")}"

  vars {
    container_name = "${local.batch_container_name}"
    image          = "${module.batch_ecr.ecr_repository_url}:latest"
    awslogs_group  = "${local.batch_awslogs_group}"
    awslogs_region = "${local.awslogs_region}"
  }
}

resource "aws_cloudwatch_log_group" "batch_log_group" {
  name              = "${local.batch_awslogs_group}"
  retention_in_days = "${local.retention_in_days}"
}

module "batch_ecr" {
  source          = "git::https://github.com/tmknom/terraform-aws-ecr.git?ref=tags/1.0.0"
  name            = "batch"
  tag_prefix_list = ["release"]
}
