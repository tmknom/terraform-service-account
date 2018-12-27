provider "aws" {
  version = "= 1.54.0"
  region  = "ap-northeast-1"
}

# https://www.terraform.io/docs/providers/github/index.html
provider "github" {
  version      = "= 1.3.0"
  token        = "${local.github_token}"
  organization = "${local.github_organization}"
}

# https://www.terraform.io/docs/providers/random/index.html
provider "random" {
  version = "= 2.0.0"
}
