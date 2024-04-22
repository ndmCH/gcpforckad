provider "google" {
  credentials = file("var.gcp_credentials_file")
  project     = "ckad-practice-420508"
  region      = "europe-west6"
}

variable "gcp_credentials_file" {
  type        = string
  description = "Path to the GCP credentials file"
}

