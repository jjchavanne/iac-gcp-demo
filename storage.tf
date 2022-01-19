resource "google_storage_bucket" "my-bucket" {
  name                        = "${var.project_id}-bucket"
  force_destroy               = true
  location                    = "US"
  uniform_bucket_level_access = true
  labels = {
    git_commit           = "7d86446d43661f8cf2ea1088c4e0a5d4b7b69781"
    git_file             = "storage_tf"
    git_last_modified_at = "2022-01-19-23-25-01"
    git_last_modified_by = "jchavanne"
    git_modifiers        = "jchavanne"
    git_org              = "jjchavanne"
    git_repo             = "iac-gcp-demo"
    yor_trace            = "0ad586b7-3aaf-4dd8-9b77-2313a4f717e9"
  }
}