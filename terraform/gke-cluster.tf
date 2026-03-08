resource "google_container_cluster" "primary" {

  name     = var.cluster_name
  location = var.zone

  remove_default_node_pool = true
  initial_node_count       = 1

}

resource "google_container_node_pool" "primary_nodes" {

  name       = "primary-node-pool"
  location   = var.zone
  cluster    = google_container_cluster.primary.name
  node_count = var.node_count

  node_config {

    disk_size_gb = var.disk_size
    disk_type    = var.disk_type

    machine_type = "e2-medium"

    oauth_scopes = [
      "https://www.googleapis.com/auth/cloud-platform"
    ]
  }

}