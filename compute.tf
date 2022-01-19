resource "google_compute_instance" "default" {
  project       = var.project_id
#  region  = "us-central1"
  name          = "test"
  machine_type  = "e2-micro"
  zone          = "us-central1-c"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-10"
    }
  }
  network_interface {
    network = "default"

    access_config {
      // Ephemeral public IP
    }
  }
}