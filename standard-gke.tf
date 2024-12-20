/*provider "google" {
  project = "your-gcp-project-id"
  region  = "us-central1"
}

resource "google_compute_network" "vpc_network" {
  name = "gke-network"
}

resource "google_compute_subnetwork" "subnetwork" {
  name          = "gke-subnetwork"
  ip_cidr_range = "10.0.0.0/28"  # Adequate for 3 nodes
  region        = "us-central1"
  network       = google_compute_network.vpc_network.name

  secondary_ip_range {
    range_name    = "pods"
    ip_cidr_range = "10.1.0.0/23"  # Adequate for 330 pods
  }
}

resource "google_container_cluster" "primary" {
  name     = "my-gke-cluster"
  location = "us-central1"

  network    = google_compute_network.vpc_network.name
  subnetwork = google_compute_subnetwork.subnetwork.name

  # Master configuration
  initial_node_count = 1

  # Node configuration
  node_config {
    machine_type = "n1-standard-1"
    oauth_scopes = [
      "https://www.googleapis.com/auth/cloud-platform",
    ]
  }

  # Node pool configuration
  node_pool {
    name              = "default-pool"
    initial_node_count = 2

    node_config {
      machine_type = "n1-standard-1"
      oauth_scopes = [
        "https://www.googleapis.com/auth/cloud-platform",
      ]
    }
  }
}

output "kubernetes_cluster_name" {
  value = google_container_cluster.primary.name
}
*/