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

| Name                                        | Description                                                                                              |
| ------------------------------------------- | -------------------------------------------------------------------------------------------------------- |
| app_cloudwatch_log_group_arn                | The Amazon Resource Name (ARN) specifying the app log group.                                             |
| batch_cloudwatch_log_group_arn              | The Amazon Resource Name (ARN) specifying the batch log group.                                           |
| batch_ecr_repository_arn                    | Full ARN of the batch repository.                                                                        |
| batch_ecr_repository_name                   | The name of the batch repository.                                                                        |
| batch_ecr_repository_registry_id            | The registry ID where the batch repository was created.                                                  |
| batch_ecr_repository_url                    | The URL of the batch repository (in the form aws_account_id.dkr.ecr.region.amazonaws.com/repositoryName) |
| batch_ecs_task_definition_arn               | Full ARN of the Batch Task Definition (including both family and revision).                              |
| batch_ecs_task_definition_family            | The family of the Batch Task Definition.                                                                 |
| batch_ecs_task_definition_revision          | The revision of the Batch Task in a particular family.                                                   |
| batch_ecs_task_execution_policy_arn         | The ARN assigned by AWS to this Batch ECS Task Execution IAM Policy.                                     |
| batch_ecs_task_execution_policy_description | The description of the Batch ECS Task Execution IAM Policy.                                              |
| batch_ecs_task_execution_policy_document    | The policy document of the Batch ECS Task Execution IAM Policy.                                          |
| batch_ecs_task_execution_policy_id          | The Batch ECS Task Execution IAM Policy's ID.                                                            |
| batch_ecs_task_execution_policy_name        | The name of the Batch ECS Task Execution IAM Policy.                                                     |
| batch_ecs_task_execution_policy_path        | The path of the Batch ECS Task Execution IAM Policy.                                                     |
| batch_ecs_task_execution_role_arn           | The Amazon Resource Name (ARN) specifying the Batch ECS Task Execution IAM Role.                         |
| batch_ecs_task_execution_role_create_date   | The creation date of the Batch ECS Task Execution IAM Role.                                              |
| batch_ecs_task_execution_role_description   | The description of the Batch ECS Task Execution IAM Role.                                                |
| batch_ecs_task_execution_role_name          | The name of the Batch ECS Task Execution IAM Role.                                                       |
| batch_ecs_task_execution_role_unique_id     | The stable and unique string identifying the Batch ECS Task Execution IAM Role.                          |
| cloudwatch_event_rule_arn                   | The Amazon Resource Name (ARN) of the rule.                                                              |
| ecs_cluster_arn                             | The Amazon Resource Name (ARN) that identifies the cluster.                                              |
| ecs_cluster_id                              | The Amazon Resource Name (ARN) that identifies the cluster.                                              |
| ecs_events_policy_arn                       | The ARN assigned by AWS to this CloudWatch Events IAM Policy.                                            |
| ecs_events_policy_description               | The description of the CloudWatch Events IAM Policy.                                                     |
| ecs_events_policy_document                  | The policy document of the CloudWatch Events IAM Policy.                                                 |
| ecs_events_policy_id                        | The CloudWatch Events IAM Policy's ID.                                                                   |
| ecs_events_policy_name                      | The name of the CloudWatch Events IAM Policy.                                                            |
| ecs_events_policy_path                      | The path of the CloudWatch Events IAM Policy.                                                            |
| ecs_events_role_arn                         | The Amazon Resource Name (ARN) specifying the CloudWatch Events IAM Role.                                |
| ecs_events_role_create_date                 | The creation date of the IAM Role.                                                                       |
| ecs_events_role_description                 | The description of the CloudWatch Events IAM Role.                                                       |
| ecs_events_role_name                        | The name of the CloudWatch Events IAM Role.                                                              |
| ecs_events_role_unique_id                   | The stable and unique string identifying the CloudWatch Events IAM Role.                                 |
| ecs_service_cluster                         | The Amazon Resource Name (ARN) of cluster which the service runs on.                                     |
| ecs_service_desired_count                   | The number of instances of the task definition.                                                          |
| ecs_service_iam_role                        | The ARN of IAM role used for ELB.                                                                        |
| ecs_service_id                              | The Amazon Resource Name (ARN) that identifies the service.                                              |
| ecs_service_name                            | The name of the service.                                                                                 |
| ecs_service_security_group_arn              | The ARN of the ECS Service security group.                                                               |
| ecs_service_security_group_description      | The description of the ECS Service security group.                                                       |
| ecs_service_security_group_egress           | The egress rules of the ECS Service security group.                                                      |
| ecs_service_security_group_id               | The ID of the ECS Service security group.                                                                |
| ecs_service_security_group_ingress          | The ingress rules of the ECS Service security group.                                                     |
| ecs_service_security_group_name             | The name of the ECS Service security group.                                                              |
| ecs_service_security_group_owner_id         | The owner ID of the ECS Service security group.                                                          |
| ecs_service_security_group_vpc_id           | The VPC ID of the ECS Service security group.                                                            |
| ecs_task_definition_arn                     | Full ARN of the Task Definition (including both family and revision).                                    |
| ecs_task_definition_family                  | The family of the Task Definition.                                                                       |
| ecs_task_definition_revision                | The revision of the task in a particular family.                                                         |
| iam_policy_arn                              | The ARN assigned by AWS to this IAM Policy.                                                              |
| iam_policy_description                      | The description of the IAM Policy.                                                                       |
| iam_policy_document                         | The policy document of the IAM Policy.                                                                   |
| iam_policy_id                               | The IAM Policy's ID.                                                                                     |
| iam_policy_name                             | The name of the IAM Policy.                                                                              |
| iam_policy_path                             | The path of the IAM Policy.                                                                              |
| iam_role_arn                                | The Amazon Resource Name (ARN) specifying the IAM Role.                                                  |
| iam_role_create_date                        | The creation date of the IAM Role.                                                                       |
| iam_role_description                        | The description of the IAM Role.                                                                         |
| iam_role_name                               | The name of the IAM Role.                                                                                |
| iam_role_unique_id                          | The stable and unique string identifying the IAM Role.                                                   |
| nginx_ecr_repository_arn                    | Full ARN of the nginx repository.                                                                        |
| nginx_ecr_repository_name                   | The name of the nginx repository.                                                                        |
| nginx_ecr_repository_registry_id            | The registry ID where the nginx repository was created.                                                  |
| nginx_ecr_repository_url                    | The URL of the nginx repository (in the form aws_account_id.dkr.ecr.region.amazonaws.com/repositoryName) |

## References

- [terraform-aws-ecs-fargate](https://github.com/tmknom/terraform-aws-ecs-fargate) - Terraform module which creates ECS Fargate resources on AWS.
- [terraform-aws-ecs-scheduled-task](https://github.com/tmknom/terraform-aws-ecs-scheduled-task) - Terraform module which creates ECS Scheduled Task resources on AWS.
- [terraform-aws-ecr](https://github.com/tmknom/terraform-aws-ecr) - Terraform module which creates ECR resources on AWS.
