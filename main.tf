terraform {
  required_providers {
    kind = {
      source  = "tehcyx/kind"
      version = "~> 0.9"
    }
  }
}

provider "kind" {}

resource "kind_cluster" "devops" {
  name           = "terraform-lab"
  node_image     = "kindest/node:v1.34.0"
  wait_for_ready = true
}
