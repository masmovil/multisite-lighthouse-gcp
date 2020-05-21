resource "google_bigquery_dataset" "lighthouse_dataset" {
  dataset_id                      = "00_SANDBOX_LIGHTHOUSE"
  location                        = "EU"
  project                         = var.project
}
