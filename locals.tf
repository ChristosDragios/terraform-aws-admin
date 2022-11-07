locals {
  default_tags = {
    environment = "Dev"
    project     = "Self-training"
    owner       = var.iam_user_name
    cost-center = "DevOps"
    region      = var.region
  }
}

locals {
  scp_region_frankfurt = {
    description = "The values for the scp for the root Organizational Unit"
    name        = "Region-${var.region}"
    type        = "SERVICE_CONTROL_POLICY"

  }

}