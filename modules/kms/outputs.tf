output "kms_key" {
  value = "${google_kms_key_ring.ey_gp_key.name}"
}