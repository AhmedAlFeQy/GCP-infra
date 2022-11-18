provider "google" {
  credentials = file("feki-GCP-key-admin.json")

  project = "fair-lane-369013"
  region  = "us-central1"
}