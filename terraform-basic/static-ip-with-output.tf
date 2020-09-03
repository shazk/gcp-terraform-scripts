/*To Create a only one static ip in gcs*/

resource "google_compute_address" "static" {
  name = "terraform-static-ip"
}

output "static" {
  value = google_compute_address.static.address
}
