# Cloud NAT の作成
resource "google_compute_router_nat" "gke_wakaran_handson_nat" {
  name                               = local.nat_name
  router                             = google_compute_router.gke_wakaran_handson_router.name
  region                             = google_compute_router.gke_wakaran_handson_router.region
  nat_ip_allocate_option             = "AUTO_ONLY"
  source_subnetwork_ip_ranges_to_nat = "LIST_OF_SUBNETWORKS"

  subnetwork {
    name                    = google_compute_subnetwork.gke_wakaran_handson_subnet.id
    source_ip_ranges_to_nat = ["ALL_IP_RANGES"]
  }

  log_config {
    enable = true
    filter = "ERRORS_ONLY"
  }
}