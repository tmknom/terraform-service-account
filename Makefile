# https://github.com/tmknom/template-terraform-module
TERRAFORM_VERSION := 0.11.10
-include .Makefile.terraform

.Makefile.terraform:
	curl -sSL https://raw.githubusercontent.com/tmknom/template-terraform-aws-account/master/Makefile.terraform -o .Makefile.terraform

# Constant definitions
AUDIT_DIR := ./audit
BACKEND_DIR := ./backend
DATASTORE_DIR := ./datastore
DEPLOYMENT_DIR := ./deployment
FRONTEND_DIR := ./frontend
IAM_DIR := ./iam
MONITORING_DIR := ./monitoring
NETWORK_DIR := ./network
SECRET_DIR := ./secret

# Define TF_VAR_terraform_backend_bucket_name and TF_VAR_enable_destruction in environment variable in advance.
TERRAFORM_BACKEND_BUCKET_NAME := $${TF_VAR_terraform_backend_bucket_name}
ENABLE_DESTRUCTION := $${TF_VAR_enable_destruction:-false}

TERRAFORM_INIT_OPTION := -backend-config="bucket=${TERRAFORM_BACKEND_BUCKET_NAME}"
TERRAFORM_BACKEND_BUCKET_NAME_OPTION := -var terraform_backend_bucket_name=${TERRAFORM_BACKEND_BUCKET_NAME}
ENABLE_DESTRUCTION_OPTION := -var enable_destruction=${ENABLE_DESTRUCTION}
TERRAFORM_OPTIONS := ${TERRAFORM_BACKEND_BUCKET_NAME_OPTION} ${ENABLE_DESTRUCTION_OPTION}

# audit
terraform-plan-audit: ## Run terraform plan audit
	$(call terraform,${AUDIT_DIR},init,${TERRAFORM_INIT_OPTION})
	$(call terraform,${AUDIT_DIR},plan,${TERRAFORM_OPTIONS}) | tee -a /dev/stderr | docker run --rm -i tmknom/terraform-landscape

terraform-apply-audit: ## Run terraform apply audit
	$(call terraform,${AUDIT_DIR},apply,${TERRAFORM_OPTIONS})

terraform-destroy-audit: ## Run terraform destroy audit
	$(call terraform,${AUDIT_DIR},destroy,${TERRAFORM_OPTIONS})


# backend
terraform-plan-backend: ## Run terraform plan backend
	$(call terraform,${BACKEND_DIR},init,${TERRAFORM_INIT_OPTION})
	$(call terraform,${BACKEND_DIR},plan,${TERRAFORM_OPTIONS}) | tee -a /dev/stderr | docker run --rm -i tmknom/terraform-landscape

terraform-apply-backend: ## Run terraform apply backend
	$(call terraform,${BACKEND_DIR},apply,${TERRAFORM_OPTIONS})

terraform-destroy-backend: ## Run terraform destroy backend
	$(call terraform,${BACKEND_DIR},destroy,${TERRAFORM_OPTIONS})


# datastore
terraform-plan-datastore: ## Run terraform plan datastore
	$(call terraform,${DATASTORE_DIR},init,${TERRAFORM_INIT_OPTION})
	$(call terraform,${DATASTORE_DIR},plan,${TERRAFORM_OPTIONS}) | tee -a /dev/stderr | docker run --rm -i tmknom/terraform-landscape

terraform-apply-datastore: ## Run terraform apply datastore
	$(call terraform,${DATASTORE_DIR},apply,${TERRAFORM_OPTIONS})

terraform-destroy-datastore: ## Run terraform destroy datastore
	$(call terraform,${DATASTORE_DIR},destroy,${TERRAFORM_OPTIONS})


# deployment
terraform-plan-deployment: ## Run terraform plan deployment
	$(call terraform,${DEPLOYMENT_DIR},init,${TERRAFORM_INIT_OPTION})
	$(call terraform,${DEPLOYMENT_DIR},plan,${TERRAFORM_OPTIONS}) | tee -a /dev/stderr | docker run --rm -i tmknom/terraform-landscape

terraform-apply-deployment: ## Run terraform apply deployment
	$(call terraform,${DEPLOYMENT_DIR},apply,${TERRAFORM_OPTIONS})

terraform-destroy-deployment: ## Run terraform destroy deployment
	$(call terraform,${DEPLOYMENT_DIR},destroy,${TERRAFORM_OPTIONS})


# frontend
terraform-plan-frontend: ## Run terraform plan frontend
	$(call terraform,${FRONTEND_DIR},init,${TERRAFORM_INIT_OPTION})
	$(call terraform,${FRONTEND_DIR},plan,${TERRAFORM_OPTIONS}) | tee -a /dev/stderr | docker run --rm -i tmknom/terraform-landscape

terraform-apply-frontend: ## Run terraform apply frontend
	$(call terraform,${FRONTEND_DIR},apply,${TERRAFORM_OPTIONS})

terraform-destroy-frontend: ## Run terraform destroy frontend
	$(call terraform,${FRONTEND_DIR},destroy,${TERRAFORM_OPTIONS})


# iam
terraform-plan-iam: ## Run terraform plan iam
	$(call terraform,${IAM_DIR},init,${TERRAFORM_INIT_OPTION})
	$(call terraform,${IAM_DIR},plan,${TERRAFORM_OPTIONS}) | tee -a /dev/stderr | docker run --rm -i tmknom/terraform-landscape

terraform-apply-iam: ## Run terraform apply iam
	$(call terraform,${IAM_DIR},apply,${TERRAFORM_OPTIONS})

terraform-destroy-iam: ## Run terraform destroy iam
	$(call terraform,${IAM_DIR},destroy,${TERRAFORM_OPTIONS})


# monitoring
terraform-plan-monitoring: ## Run terraform plan monitoring
	$(call terraform,${MONITORING_DIR},init,${TERRAFORM_INIT_OPTION})
	$(call terraform,${MONITORING_DIR},plan,${TERRAFORM_OPTIONS}) | tee -a /dev/stderr | docker run --rm -i tmknom/terraform-landscape

terraform-apply-monitoring: ## Run terraform apply monitoring
	$(call terraform,${MONITORING_DIR},apply,${TERRAFORM_OPTIONS})

terraform-destroy-monitoring: ## Run terraform destroy monitoring
	$(call terraform,${MONITORING_DIR},destroy,${TERRAFORM_OPTIONS})


# network
terraform-plan-network: ## Run terraform plan network
	$(call terraform,${NETWORK_DIR},init,${TERRAFORM_INIT_OPTION})
	$(call terraform,${NETWORK_DIR},plan,${TERRAFORM_OPTIONS}) | tee -a /dev/stderr | docker run --rm -i tmknom/terraform-landscape

terraform-apply-network: ## Run terraform apply network
	$(call terraform,${NETWORK_DIR},apply,${TERRAFORM_OPTIONS})

terraform-destroy-network: ## Run terraform destroy network
	$(call terraform,${NETWORK_DIR},destroy,${TERRAFORM_OPTIONS})


# secret
terraform-plan-secret: ## Run terraform plan secret
	$(call terraform,${SECRET_DIR},init,${TERRAFORM_INIT_OPTION})
	$(call terraform,${SECRET_DIR},plan,${TERRAFORM_OPTIONS}) | tee -a /dev/stderr | docker run --rm -i tmknom/terraform-landscape

terraform-apply-secret: ## Run terraform apply secret
	$(call terraform,${SECRET_DIR},apply,${TERRAFORM_OPTIONS})

terraform-destroy-secret: ## Run terraform destroy secret
	$(call terraform,${SECRET_DIR},destroy,${TERRAFORM_OPTIONS})
