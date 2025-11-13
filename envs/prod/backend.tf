terraform {
  backend "gcs" {
    bucket = "prod-state-bucket"
    prefix = "terraform/state/prod"
  }
}
