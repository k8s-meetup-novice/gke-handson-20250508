# GKE Autopilot クラスタの作成
resource "google_container_cluster" "gke_wakaran_handson_autopilot_cluster" {
  name     = var.cluster_name
  location = var.region
  network    = google_compute_network.gke_wakaran_handson_vpc.id
  subnetwork = google_compute_subnetwork.gke_wakaran_handson_subnet.id

  enable_autopilot = true
  deletion_protection = false

  depends_on = [
    google_compute_subnetwork.gke_wakaran_handson_subnet,
    google_compute_router_nat.gke_wakaran_handson_nat
  ]
}