# terraform-service-account

[![CircleCI](https://circleci.com/gh/tmknom/terraform-service-account.svg?style=svg)](https://circleci.com/gh/tmknom/terraform-service-account)
[![License](https://img.shields.io/github/license/tmknom/terraform-service-account.svg)](https://opensource.org/licenses/Apache-2.0)

## Development

### Requirements

- [Docker](https://www.docker.com/)

### Configure environment variables

#### Terraform variables

```shell
export TF_VAR_enable_destruction=<true|false>
export TF_VAR_terraform_backend_bucket_name=<your-bucket>
```

#### AWS credentials

```shell
export AWS_ACCESS_KEY_ID=AKIAIOSFODNN7EXAMPLE
export AWS_SECRET_ACCESS_KEY=wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY
export AWS_DEFAULT_REGION=ap-northeast-1
```

### Installation

```shell
git clone git@github.com:tmknom/terraform-service-account.git
cd terraform-service-account
make install
```

### Makefile targets

```text
apply-audit                    Run terraform apply audit
apply-backend                  Run terraform apply backend
apply-datastore-mysql          Run terraform apply datastore/mysql
apply-datastore-redis          Run terraform apply datastore/redis
apply-deployment               Run terraform apply deployment
apply-frontend                 Run terraform apply frontend
apply-iam                      Run terraform apply iam
apply-monitoring               Run terraform apply monitoring
apply-network                  Run terraform apply network
apply-secret                   Run terraform apply secret
check-format                   Check format code
cibuild                        Execute CI build
destroy-audit                  Run terraform destroy audit
destroy-backend                Run terraform destroy backend
destroy-datastore-mysql        Run terraform destroy datastore/mysql
destroy-datastore-redis        Run terraform destroy datastore/redis
destroy-deployment             Run terraform destroy deployment
destroy-frontend               Run terraform destroy frontend
destroy-iam                    Run terraform destroy iam
destroy-monitoring             Run terraform destroy monitoring
destroy-network                Run terraform destroy network
destroy-secret                 Run terraform destroy secret
format                         Format code
help                           Show help
install                        Install requirements
lint                           Lint code
plan-all                       Run terraform plan all
plan-audit                     Run terraform plan audit
plan-backend                   Run terraform plan backend
plan-datastore-mysql           Run terraform plan datastore/mysql
plan-datastore-redis           Run terraform plan datastore/redis
plan-deployment                Run terraform plan deployment
plan-frontend                  Run terraform plan frontend
plan-iam                       Run terraform plan iam
plan-monitoring                Run terraform plan monitoring
plan-network                   Run terraform plan network
plan-secret                    Run terraform plan secret
upgrade                        Upgrade makefile
```

## License

Apache 2 Licensed. See LICENSE for full details.
