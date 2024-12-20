
resource "google_compute_subnetwork" "tf-web-subnet" {
    name          = "tf-auto-web-subnet"
    ip_cidr_range = "10.0.1.0/24"
    region        = "us-central1"
    network       = google_compute_network.tf-ecom-vpc.id
}


resource "google_compute_subnetwork" "tf-app-subnet" {
    name          = "tf-auto-app-subnet"
    ip_cidr_range = "10.0.2.0/24"
    region        = "us-central1"
    network       = google_compute_network.tf-ecom-vpc.id
}


resource "google_compute_subnetwork" "tf-db-subnet" {
    name          = "tf-auto-db-subnet"
    ip_cidr_range = "10.0.3.0/24"
    region        = "us-central1"
    network       = google_compute_network.tf-ecom-vpc.id
}

/*

*/

