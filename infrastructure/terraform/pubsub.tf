resource "google_pubsub_topic" "ligthouse_pubsub_topic" {
  count   = length(var.brands)
  project = var.project
  name    = "launch-${var.brands[count.index]}-lighthouse"
}
