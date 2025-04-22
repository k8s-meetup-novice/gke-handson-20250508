# 作成されたGKEクラスタのエンドポイントを出力
output "gke_cluster_endpoint" {
  description = "The GKE Autopilot cluster endpoint."
  value       = google_container_cluster.gke_wakaran_handson_autopilot_cluster.endpoint
}