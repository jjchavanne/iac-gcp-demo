resource "google_compute_instance" "default" {
  project = var.project_id
  #  region  = "us-central1"
  name         = "test"
  machine_type = "e2-micro"
  zone         = "us-central1-c"

  boot_disk {
    source = "https://www.googleapis.com/compute/v1/projects/dev-test-254718/zones/us-central1-c/disks/test"
    mode = "READ_WRITE"
    device_name = "persistent-disk-0"
    auto_delete = true
    initialize_params {
      image = "debian-cloud/debian-10"
    }
  }
  network_interface {
    subnetwork_project = "dev-test-254718"
    subnetwork = "https://www.googleapis.com/compute/v1/projects/dev-test-254718/regions/us-central1/subnetworks/default"
    network_ip = "10.128.0.3"
    network = "https://www.googleapis.com/compute/v1/projects/dev-test-254718/global/networks/default"
    access_config = {
      network_tier = "PREMIUM"
    }
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
  can_ip_forward = false
  deletion_protection = false
  enable_display = false
  scheduling = {"automatic_restart": true, "on_host_maintenance": "MIGRATE", "preemptible": false}
  shielded_instance_config = {"enable_integrity_monitoring": true, "enable_secure_boot": false, "enable_vtpm": true}
}
