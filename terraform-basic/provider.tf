provider "google" {
  version = "3.5.0"

  credentials = file("your-service-account.json")

  project = "project-id"
  region  = "us-central1"
  zone    = "us-central1-c"
}
