provider "google" {
  version = "3.5.0"
  zone    = "us-central1-c" //enter zone

  project = "training-freshers" //enter project name
  region  = "us-central1" //enter correct location
}


resource "google_compute_instance" "vm_instance" {
  name         = "aishwarya-terraform-instance"
  machine_type = "f1-micro"
  tags = ["name","aishwarya"]
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }
  network_interface {
    network = "default"

    access_config {
      // Ephemeral IP 
    }
  }
}
