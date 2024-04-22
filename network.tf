resource "google_compute_network" "lfclass" {
  name                    = "lfclass"
  auto_create_subnetworks = true
}

resource "google_compute_firewall" "allow_all" {
  name    = "allow-all"
  network = google_compute_network.lfclass.name

  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
    ports    = ["0-65535"]
  }

  allow {
    protocol = "udp"
    ports    = ["0-65535"]
  }

  source_ranges = ["0.0.0.0/0"]
}

