# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

orchestrate "auto_approve" "main" {
  description = "this is my orchestration rule"

  check {
    condition = context.plan.deployment == deployment.simple
    reason = "always true for simple"
  }
}

deployment "simple" {
  inputs = {
    prefix           = "simple"
    instances        = 1
  }
}

deployment "complex" {
  inputs = {
    prefix           = "complex"
    instances        = 3
  }
}
