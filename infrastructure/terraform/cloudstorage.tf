resource "google_storage_bucket" "lighthouse_storage" {
  count         = length(var.brands)
  project       = var.project
  name          = "${var.project}-${var.brands[count.index]}-lighthouse-report"
  location      = "EUROPE-WEST1"
  storage_class = "REGIONAL"
  lifecycle_rule {
    action {
      storage_class = "COLDLINE"
      type          = "SetStorageClass"
    }

    condition {
      age                = 30
      num_newer_versions = 0
      with_state         = "ANY"
    }
  }

}
