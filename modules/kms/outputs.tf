output "kms_key" {
  value = "${google_kms_key_ring.ey-gp-key.name}"
}