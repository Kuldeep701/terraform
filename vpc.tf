
resource "google_compute_network" "tf-ecom-vpc"{
    name = "tf-auto-ecom-vpc"
    auto_create_subnetworks = "false"
}



