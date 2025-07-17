provider "aws" {
  region = "us-east-1"
}

locals {
  finance_module_version = "v0.1.1"
}

module "finance" {
  source = format("https://github.com/Life-Track/finance.git?ref=%s", locals.finance_module_version)
  s3_name = "beans_bang_wife"
}