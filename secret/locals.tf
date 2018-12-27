locals {
  domain_name_path = "/terraform/network/domain_name"
  github_path      = "/terraform/deployment/github"

  # If domain name was not stored, this value is set.
  #
  # NOTE: This value is reserved example second level domain name that is defined RFC2606.
  #       https://tools.ietf.org/html/rfc2606
  uninitialized_domain_name = "example.com"
}
