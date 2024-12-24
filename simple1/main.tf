provider "google" {
  project     = "qwiklabs-gcp-03-780fbf1fd747"
  region      = "us-central1"
}

resource "google_storage_bucket" "test-bucket-for-state" {
  name        = "qwiklabs-gcp-03-780fbf1fd747"
  location    = "US"
  uniform_bucket_level_access = true
  force_destroy = true
}

terraform {
  backend "local" {
    path = "terraform/state/terraform.tfstate"
  }
}

