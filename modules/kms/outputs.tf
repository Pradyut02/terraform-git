output "kms_key" {
  value = "${google_kms_key_ring.gdp-storage-encrypt-ring.name}"
}