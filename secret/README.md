# Secret stack

Live secret resources definition.

## Usage

Step 1 - Provision baseline resources

```shell
make terraform-plan-secret
make terraform-apply-secret
```

Step 2 - Overwrite value

```shell
aws ssm put-parameter --overwrite --name "root_domain_name" --type "SecureString" --value "<overwrite_value>"
```

## Resources

- SSM Parameter

## Design

- Use SecureString as default
- Avoid overwrite of unmanaged existing resource

## Outputs

| Name                                                | Description                                                 |
| --------------------------------------------------- | ----------------------------------------------------------- |
| root_domain_name_ssm_parameter_arn                  | The ARN of the root domain name parameter.                  |
| root_domain_name_ssm_parameter_description          | The description of the root domain name parameter.          |
| root_domain_name_ssm_parameter_name                 | The name of the root domain name parameter.                 |
| root_domain_name_ssm_parameter_type                 | The type of the root domain name parameter.                 |
| root_domain_name_ssm_parameter_value                | The value of the root domain name parameter.                |
| uninitialized_domain_name_ssm_parameter_arn         | The ARN of the uninitialized domain name parameter.         |
| uninitialized_domain_name_ssm_parameter_description | The description of the uninitialized domain name parameter. |
| uninitialized_domain_name_ssm_parameter_name        | The name of the uninitialized domain name parameter.        |
| uninitialized_domain_name_ssm_parameter_type        | The type of the uninitialized domain name parameter.        |
| uninitialized_domain_name_ssm_parameter_value       | The value of the uninitialized domain name parameter.       |

## References

- [terraform-aws-ssm-parameter](https://github.com/tmknom/terraform-aws-ssm-parameter) - Terraform module which creates SSM Parameter resources on AWS.
