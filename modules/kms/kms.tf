resource "google_kms_key_ring" "gdp-storage-encrypt-ring" {
  location = "australia-southeast1"
  name     = "GDP-STORAGE-ENCRYPT-RING"
  project  = "gp-ct-sbox-adv-dna"
}




resource "google_kms_crypto_key" "bucket_encrypt" {
  destroy_scheduled_duration = "7776000s"
  key_ring                   = "projects/gp-ct-sbox-adv-dna/locations/australia-southeast1/keyRings/${google_kms_key_ring.gdp-storage-encrypt-ring.name}"
  name                       = "BQ-DS-ENCRYPT"
  purpose                    = "ENCRYPT_DECRYPT"
  rotation_period            = "7776000s"

  version_template {
    algorithm        = "GOOGLE_SYMMETRIC_ENCRYPTION"
    protection_level = "SOFTWARE"
  }
}