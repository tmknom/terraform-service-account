output "ecs_cluster_id" {
  value       = "${aws_ecs_cluster.default.id}"
  description = "The Amazon Resource Name (ARN) that identifies the cluster."
}

output "ecs_cluster_arn" {
  value       = "${aws_ecs_cluster.default.arn}"
  description = "The Amazon Resource Name (ARN) that identifies the cluster."
}
