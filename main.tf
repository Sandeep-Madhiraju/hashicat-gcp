terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "=3.68.0"
    }
  }
}

provider "google" {
  project = var.project
  region  = var.region
}

resource "google_compute_instance" "vm_instance"{
name="autoprovision-vm"
machine_type="e2-medium"

boot_disk{
initialize_params{
image="debian-cloud/debian-9"
}
}

network_interface{
network="default"
access_config{
}
}
}
