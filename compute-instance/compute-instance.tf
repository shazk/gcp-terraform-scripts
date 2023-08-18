provider "google" {
  credentials = file(var.credentials_file)
  project     = var.project_id
  region      = var.region
}

resource "google_compute_address" "static_ip" {
  name   = "my-static-ip"
  region = var.region
}

resource "google_compute_instance" "centos_instance" {
  name         = "centos-instance"
  machine_type = "e2-micro"
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = "centos-cloud/centos-7"
    }
  }

  network_interface {
    network = "default"

    access_config {
      nat_ip = google_compute_address.static_ip.address
    }
  }
}

variable "credentials_file" {
  description = "Path to the GCP service account JSON key"
}

variable "project_id" {
  description = "GCP Project ID"
}

variable "region" {
  description = "GCP region"
}

variable "zone" {
  description = "GCP zone"
}
