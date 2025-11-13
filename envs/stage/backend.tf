terraform {
  backend "gcs" {
    bucket = "stage-state-bucket"
    prefix = "terraform/state/dev"
  }
}
