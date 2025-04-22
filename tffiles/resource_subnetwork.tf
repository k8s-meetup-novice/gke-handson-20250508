# サブネットの作成
resource "google_compute_subnetwork" "gke_wakaran_handson_subnet" {
  name          = local.subnet_name
  ip_cidr_range = "10.10.0.0/20"
  region        = var.region
  network       = google_compute_network.gke_wakaran_handson_vpc.id

  secondary_ip_range {
    range_name    = local.pod_range_name
    ip_cidr_range = "10.20.0.0/16"
  }
  secondary_ip_range {
    range_name    = local.svc_range_name
    ip_cidr_range = "10.30.0.0/20"
  }
  private_ip_google_access = true
}