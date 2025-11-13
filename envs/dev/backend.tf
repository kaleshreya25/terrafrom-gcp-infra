terraform {
  backend "gcs" {
    bucket = "staging-state-bucket"
    prefix = "terraform/state/dev"
  }
}

