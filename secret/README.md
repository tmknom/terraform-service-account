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
aws ssm put-parameter --overwrite --name "/terraform/network/domain_name/root" --type "SecureString" --value "<overwrite_value>"
```

## Resources

- KMS Key
- KMS Alias
- SSM Parameter

## Design

- Enable key rotation
- Maximum deletion window
- Use SecureString as default
- Avoid overwrite of unmanaged existing resource

## Outputs

| Name                                                | Description                                                          |
| --------------------------------------------------- | -------------------------------------------------------------------- |
| default_kms_alias_arn                               | The Amazon Resource Name (ARN) of the default key alias.             |
| default_kms_alias_target_key_arn                    | The Amazon Resource Name (ARN) of the default target key identifier. |
| default_kms_key_arn                                 | The Amazon Resource Name (ARN) of the default key.                   |
| default_kms_key_id                                  | The globally unique identifier for the default key.                  |
| root_domain_name_ssm_parameter_arn                  | The ARN of the root domain name parameter.                           |
| root_domain_name_ssm_parameter_description          | The description of the root domain name parameter.                   |
| root_domain_name_ssm_parameter_name                 | The name of the root domain name parameter.                          |
| root_domain_name_ssm_parameter_type                 | The type of the root domain name parameter.                          |
| root_domain_name_ssm_parameter_value                | The value of the root domain name parameter.                         |
| uninitialized_domain_name_ssm_parameter_arn         | The ARN of the uninitialized domain name parameter.                  |
| uninitialized_domain_name_ssm_parameter_description | The description of the uninitialized domain name parameter.          |
| uninitialized_domain_name_ssm_parameter_name        | The name of the uninitialized domain name parameter.                 |
| uninitialized_domain_name_ssm_parameter_type        | The type of the uninitialized domain name parameter.                 |
| uninitialized_domain_name_ssm_parameter_value       | The value of the uninitialized domain name parameter.                |

## References

- [terraform-aws-ssm-parameter](https://github.com/tmknom/terraform-aws-ssm-parameter) - Terraform module which creates SSM Parameter resources on AWS.
