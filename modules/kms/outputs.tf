output "kms_key" {
  value = "${google_kms_key_ring.iag-gdp-storage-encrypt-ring1.name}"
}