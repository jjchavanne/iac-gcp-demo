resource "google_compute_firewall" "rules" {
  project     = var.project_id
  name        = "test-firewall-rule"
  network     = var.vpc_name
  description = "Test firewall rule targeting tagged instances"

  allow {
    protocol = "tcp"
    ports    = ["80", "8080"]
  }

  source_tags = ["foo"]
  target_tags = ["web"]
}