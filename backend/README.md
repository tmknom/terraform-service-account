# Backend stack

Live backend resources definition.

## Resources

- ECS Service
- ECS Task Definitions
- IAM Role of ECS Task Execution
- Security Group for ECS Service

## Design

- Fargate launch type
- Disable assign public ip address

## Inputs

| Name                          | Description                               |  Type  | Default | Required |
| ----------------------------- | ----------------------------------------- | :----: | :-----: | :------: |
| terraform_backend_bucket_name | The Bucket Name of the terraform backend. | string |    -    |   yes    |

## Outputs

| Name                                   | Description                                                           |
| -------------------------------------- | --------------------------------------------------------------------- |
| ecs_cluster_arn                        | The Amazon Resource Name (ARN) that identifies the cluster.           |
| ecs_cluster_id                         | The Amazon Resource Name (ARN) that identifies the cluster.           |
| ecs_service_cluster                    | The Amazon Resource Name (ARN) of cluster which the service runs on.  |
| ecs_service_desired_count              | The number of instances of the task definition.                       |
| ecs_service_iam_role                   | The ARN of IAM role used for ELB.                                     |
| ecs_service_id                         | The Amazon Resource Name (ARN) that identifies the service.           |
| ecs_service_name                       | The name of the service.                                              |
| ecs_service_security_group_arn         | The ARN of the ECS Service security group.                            |
| ecs_service_security_group_description | The description of the ECS Service security group.                    |
| ecs_service_security_group_egress      | The egress rules of the ECS Service security group.                   |
| ecs_service_security_group_id          | The ID of the ECS Service security group.                             |
| ecs_service_security_group_ingress     | The ingress rules of the ECS Service security group.                  |
| ecs_service_security_group_name        | The name of the ECS Service security group.                           |
| ecs_service_security_group_owner_id    | The owner ID of the ECS Service security group.                       |
| ecs_service_security_group_vpc_id      | The VPC ID of the ECS Service security group.                         |
| ecs_task_definition_arn                | Full ARN of the Task Definition (including both family and revision). |
| ecs_task_definition_family             | The family of the Task Definition.                                    |
| ecs_task_definition_revision           | The revision of the task in a particular family.                      |
| ecs_task_execution_policy_arn          | The ARN assigned by AWS to this ecs task execution policy.            |
| ecs_task_execution_policy_description  | The description of the ecs task execution policy.                     |
| ecs_task_execution_policy_document     | The policy document of the ecs task execution policy.                 |
| ecs_task_execution_policy_id           | The ecs task execution policy's ID.                                   |
| ecs_task_execution_policy_name         | The name of the ecs task execution policy.                            |
| ecs_task_execution_policy_path         | The path of the ecs task execution policy in IAM.                     |
| ecs_task_execution_role_arn            | The Amazon Resource Name (ARN) specifying the ecs task execution.     |
| ecs_task_execution_role_create_date    | The creation date of the ecs task execution.                          |
| ecs_task_execution_role_description    | The description of the ecs task execution.                            |
| ecs_task_execution_role_name           | The name of the ecs task execution.                                   |
| ecs_task_execution_role_unique_id      | The stable and unique string identifying the ecs task execution.      |

## References

- [terraform-aws-alb](https://github.com/tmknom/terraform-aws-alb) - Terraform module which creates ALB resources on AWS.
- [terraform-aws-s3-lb-log](https://github.com/tmknom/terraform-aws-s3-lb-log) - Terraform module which creates S3 Bucket resources for Load Balancer Access Logs on AWS.
