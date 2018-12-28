# Deployment stack

Live deployment resources definition.

## Resources

- ECR
- CodeBuild
- CodePipeline
- GitHub Webhook

## Design

- Integration with GitHub
- Disable periodic checks
- Securing webhooks

## Inputs

| Name                          | Description                                                                                                                                  |  Type  | Default | Required |
| ----------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------- | :----: | :-----: | :------: |
| terraform_backend_bucket_name | The Bucket Name of the terraform backend.                                                                                                    | string |    -    |   yes    |
| enable_destruction            | WARNING: If true, the S3 bucket can be destroyed. This variable is used during testing. Be sure to specify false, if production environment. | string | `false` |    no    |

## Outputs

| Name                                | Description                                                                                                     |
| ----------------------------------- | --------------------------------------------------------------------------------------------------------------- |
| codebuild_iam_policy_arn            | The ARN assigned by AWS to this IAM Policy for CodeBuild.                                                       |
| codebuild_iam_policy_description    | The description of the IAM Policy for CodeBuild.                                                                |
| codebuild_iam_policy_document       | The policy document of the IAM Policy for CodeBuild.                                                            |
| codebuild_iam_policy_id             | The IAM Policy's ID for CodeBuild.                                                                              |
| codebuild_iam_policy_name           | The name of the IAM Policy for CodeBuild.                                                                       |
| codebuild_iam_policy_path           | The path of the IAM Policy for CodeBuild.                                                                       |
| codebuild_iam_role_arn              | The Amazon Resource Name (ARN) specifying the IAM Role for CodeBuild.                                           |
| codebuild_iam_role_create_date      | The creation date of the IAM Role for CodeBuild.                                                                |
| codebuild_iam_role_description      | The description of the IAM Role for CodeBuild.                                                                  |
| codebuild_iam_role_name             | The name of the IAM Role for CodeBuild.                                                                         |
| codebuild_iam_role_unique_id        | The stable and unique string identifying the IAM Role for CodeBuild.                                            |
| codebuild_project_arn               | The ARN of the CodeBuild project.                                                                               |
| codebuild_project_id                | The name (if imported via name) or ARN (if created via Terraform or imported via ARN) of the CodeBuild project. |
| codepipeline_arn                    | The codepipeline ARN.                                                                                           |
| codepipeline_iam_policy_arn         | The ARN assigned by AWS to this IAM Policy for CodePipeline.                                                    |
| codepipeline_iam_policy_description | The description of the IAM Policy for CodePipeline.                                                             |
| codepipeline_iam_policy_document    | The policy document of the IAM Policy for CodePipeline.                                                         |
| codepipeline_iam_policy_id          | The IAM Policy's ID for CodePipeline.                                                                           |
| codepipeline_iam_policy_name        | The name of the IAM Policy for CodePipeline.                                                                    |
| codepipeline_iam_policy_path        | The path of the IAM Policy for CodePipeline.                                                                    |
| codepipeline_iam_role_arn           | The Amazon Resource Name (ARN) specifying the IAM Role for CodePipeline.                                        |
| codepipeline_iam_role_create_date   | The creation date of the IAM Role for CodePipeline.                                                             |
| codepipeline_iam_role_description   | The description of the IAM Role for CodePipeline.                                                               |
| codepipeline_iam_role_name          | The name of the IAM Role for CodePipeline.                                                                      |
| codepipeline_iam_role_unique_id     | The stable and unique string identifying the IAM Role for CodePipeline.                                         |
| codepipeline_id                     | The codepipeline ID.                                                                                            |
| codepipeline_webhook_id             | The CodePipeline webhook's ARN.                                                                                 |
| codepipeline_webhook_url            | The CodePipeline webhook's URL. POST events to this endpoint to trigger the target.                             |
| github_repository_webhook_url       | URL of the webhook.                                                                                             |
| nginx_ecr_repository_arn            | Full ARN of the nginx repository.                                                                               |
| nginx_ecr_repository_name           | The name of the nginx repository.                                                                               |
| nginx_ecr_repository_registry_id    | The registry ID where the nginx repository was created.                                                         |
| nginx_ecr_repository_url            | The URL of the nginx repository (in the form aws_account_id.dkr.ecr.region.amazonaws.com/repositoryName)        |

## Troubleshooting

### Bad credentials

If you receive the following error message, GitHub credential is invalid.

```shell
1 error(s) occurred:

* module.codepipeline.github_repository_webhook.default: 1 error(s) occurred:

* github_repository_webhook.default: POST https://api.github.com/repos/your/repository/hooks: 401 Bad credentials []
```

You should put the github token to SSM Parameter Store.

```shell
aws ssm put-parameter --overwrite --name "/terraform/deployment/github/token" --type "SecureString" --value "<github_token>"
```

### Not exist organization

If you receive the following error message, user or organization does not exist in GitHub.

```shell
1 error(s) occurred:

* module.codepipeline.github_repository_webhook.default: 1 error(s) occurred:

* github_repository_webhook.default: POST https://api.github.com/repos/your/repository/hooks: 404 Not Found []
```

You should put the github organization to SSM Parameter Store.

```shell
aws ssm put-parameter --overwrite --name "/terraform/deployment/github/organization" --type "SecureString" --value "<github_organization>"
```

### Invalid action declaration

If you receive the following error message, CodePipeline resources can not update that's because
[terraform-aws-codepipeline-for-ecs](https://github.com/tmknom/terraform-aws-codepipeline-for-ecs) module has constraints.

```shell
1 error(s) occurred:

* module.codepipeline.aws_codepipeline.default: 1 error(s) occurred:

* aws_codepipeline.default: [ERROR] Error updating CodePipeline (app): InvalidActionDeclarationException: Action configuration for action 'Source' is missing required configuration 'OAuthToken'
```

You should destroy current CodePipeline resources, and recreate new CodePipeline resources.

```shell
make destroy-only-target STACK_DIR=./deployment TARGET=module.codepipeline.aws_codepipeline.default
make apply-deployment
```

## References

- [terraform-aws-ecr](https://github.com/tmknom/terraform-aws-ecr) - Terraform module which creates ECR resources on AWS.
- [terraform-aws-codebuild](https://github.com/tmknom/terraform-aws-codebuild) - Terraform module which creates CodeBuild resources on AWS.
- [terraform-aws-codepipeline-for-ecs](https://github.com/tmknom/terraform-aws-codepipeline-for-ecs) - Terraform module which creates CodePipeline for ECS resources on AWS.
