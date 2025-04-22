variable "project_id" {
  description = "Google Cloud Project ID"
  type = string
}

variable "region" {
  description = "Google Cloud region"
  type        = string
  default     = "asia-northeast1"
}

variable "cluster_name" {
  description = "Google Cloud GKE Cluster Name"
  type        = string
  default     = "gke-wakaran-handson-cluster"
}

variable "repository_id" {
  description = "Google Cloud Artifact Registry REPOSITORY ID"
  type        = string
  default     = "gke-wakaran-handson-repository"
}

resource "random_string" "name" {
  length  = 5
  upper   = false
  lower   = true
  special = false
}

locals {
  vpc_name       = "gke-wakaran-handson-vpc"
  subnet_name    = "gke-wakaran-handson-subnet"
  pod_range_name = "gke-wakaran-handson-pod-range"
  svc_range_name = "gke-wakaran-handson-svc-range"
  router_name    = "gke-wakaran-handson-router"
  nat_name       = "gke-wakaran-handson-nat"
  bucket_name    = "gke-wakaran-handson-bucket-${random_string.name.result}"
}