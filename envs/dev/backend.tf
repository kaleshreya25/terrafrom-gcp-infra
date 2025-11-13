terraform {
  backend "gcs" {
    bucket = "hubble-staging-state-bucket"
    prefix = "terraform/state/dev"
  }
}

