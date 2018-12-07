# https://www.terraform.io/docs/providers/aws/r/ecs_cluster.html
resource "aws_ecs_cluster" "default" {
  name = "default"
}
