resource "google_artifact_registry_repository" "gke_wakaran_handson_repository" {
  location      = var.region
  repository_id = var.repository_id
  description   = "gke wakaran handson docker repository"
  format        = "DOCKER"
}