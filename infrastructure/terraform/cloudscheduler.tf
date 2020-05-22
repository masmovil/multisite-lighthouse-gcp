resource "google_cloud_scheduler_job" "lighthouse_scheduler" {
  count     = length(var.brands)
  name      = "launch-${var.brands[count.index]}-lighthouse"
  project   = var.project
  region    = "europe-west1"
  schedule  = "0 5 * * *"
  time_zone = "Europe/Madrid"

  pubsub_target {
    topic_name = "projects/${var.project}/topics/launch-${var.brands[count.index]}-lighthouse"
    data       = base64encode("all")
  }

}

