resource "google_storage_bucket" "my-bucket" {
  name          = "${var.project_id}-bucket"
  force_destroy = true

  uniform_bucket_level_access = true
}