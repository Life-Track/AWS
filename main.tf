provider "aws" {
  region = "us-east-1"
}

locals {
  # finance_module_version = "v0.1.3"
  # finance_module_repo    = "https://github.com/Life-Track/finance.git"
  # finance_module_source  = "${locals.finance_module_repo}?ref=${locals.finance_module_version}"
}

module "finance" {
  source  = "git::https://github.com/Life-Track/finance.git?ref=v0.1.3"
  s3_name = "beans-bang-wife"
}