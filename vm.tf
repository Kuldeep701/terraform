/*
resource "google_compute_instance" "tf-web-vm" {
    count= 2 
    name = "tf-auto-web-vm-${count.index + 1}"
    machine_type = "e2-medium"
    zone = "us-central1-a"


    boot_disk {
      initialize_params {
        image = "debian-cloud/debian-11"
      }

    }
    
    network_interface {
      subnetwork = google_compute_subnetwork.tf-web-subnet.id
    }
}
*/