provider "aws" {
  region = "us-east-1"
}

locals {
  finance_module_version = "v0.1.1"
  finance_module_repo    = "https://github.com/Life-Track/finance.git"
  finance_module_source  = "${finance_module_repo}?ref=${finance_module_version}"
}

module "finance" {
  source  = "https://github.com/Life-Track/finance.git?ref=v0.1.1"
  s3_name = "beans_bang_wife"
}