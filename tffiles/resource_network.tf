# VPCネットワークの作成
resource "google_compute_network" "gke_wakaran_handson_vpc" {
  name                    = local.vpc_name
  auto_create_subnetworks = false
  routing_mode            = "REGIONAL"
}