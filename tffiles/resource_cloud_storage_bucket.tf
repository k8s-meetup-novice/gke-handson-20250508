resource "google_storage_bucket" "gke_wakaran_handson_storage_bucket" {
 name          = local.bucket_name
 location      = "ASIA-NORTHEAST1"
 storage_class = "STANDARD"

 force_destroy = true
 uniform_bucket_level_access = true
}