terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "christos-infra"

    workspaces {
      name = "terraform-aws-admin"
    }
  }
}

provider "aws" {
  region     = var.region
  access_key = var.access_key
  secret_key = var.secret_key
  default_tags {
    tags = local.default_tags
  }
}

terraform {
  required_providers {
    pgp = {
      source  = "ekristen/pgp"
      version = "0.2.4"
    }
  }
}

provider "pgp" {
  # Configuration options
}

