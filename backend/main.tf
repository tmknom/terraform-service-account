# https://www.terraform.io/docs/providers/aws/r/ecs_cluster.html
resource "aws_ecs_cluster" "default" {
  name = "default"
}

module "ecs_fargate" {
  source                    = "git::https://github.com/tmknom/terraform-aws-ecs-fargate.git?ref=tags/1.1.0"
  name                      = "app"
  desired_count             = 2
  container_name            = "${local.container_name}"
  container_port            = "${local.container_port}"
  cluster                   = "${aws_ecs_cluster.default.arn}"
  subnets                   = ["${local.public_subnet_ids}"]
  target_group_arn          = "${local.target_group_arn}"
  vpc_id                    = "${local.vpc_id}"
  container_definitions     = "${data.template_file.container_definitions.rendered}"
  ecs_task_execution_policy = "${data.aws_iam_policy.ecs_task_execution.policy}"

  assign_public_ip                  = true
  health_check_grace_period_seconds = 10
}

data "template_file" "container_definitions" {
  template = "${file("${path.module}/container_definitions.json")}"

  vars {
    container_name = "${local.container_name}"
    container_port = "${local.container_port}"
    nginx_image    = "${module.nginx_ecr.ecr_repository_url}:latest"
  }
}

data "aws_iam_policy" "ecs_task_execution" {
  arn = "arn:aws:iam::aws:policy/service-role/AmazonECSTaskExecutionRolePolicy"
}

module "nginx_ecr" {
  source          = "git::https://github.com/tmknom/terraform-aws-ecr.git?ref=tags/1.0.0"
  name            = "nginx"
  tag_prefix_list = ["release"]
}
