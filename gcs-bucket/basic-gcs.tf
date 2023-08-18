resource "google_storage_bucket" "sp_bucket" {
  name     = "my-sp-tf"
  location = "US" # Change this to your desired location

  versioning {
    enabled = true
  }
}
