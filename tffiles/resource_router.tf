# Cloud Router の作成
resource "google_compute_router" "gke_wakaran_handson_router" {
  name    = local.router_name
  region  = google_compute_subnetwork.gke_wakaran_handson_subnet.region
  network = google_compute_network.gke_wakaran_handson_vpc.id
}