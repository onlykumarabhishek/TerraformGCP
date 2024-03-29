# setup the GCP provider | provider.tf

 terraform {
  backend "gcs" {
   bucket  = "mytf-state-prod"
   prefix  = "terraform/state"
 }
}

provider "google" {
  project = var.project_name
  credentials = file(var.gcp_auth_file)
  region  = var.gcp_region_1
}
