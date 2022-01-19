resource "google_compute_instance" "default" {
  project = var.project_id
  #  region  = "us-central1"
  name         = "test"
  machine_type = "e2-micro"
  zone         = "us-central1-c"

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
  labels = {
    git_commit           = "f13bc25b9100bbf29c19a8f48719004b82ab0869"
    git_file             = "compute_tf"
    git_last_modified_at = "2022-01-19-22-43-25"
    git_last_modified_by = "jchavanne"
    git_modifiers        = "jchavanne"
    git_org              = "jjchavanne"
    git_repo             = "iac-gcp-demo"
    yor_trace            = "b2c7c671-5eed-4c41-a0ea-bfd7f42fcda6"
  }
}