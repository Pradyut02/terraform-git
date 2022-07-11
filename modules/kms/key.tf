resource "google_kms_crypto_key" "bq_ds_encrypt" {
  destroy_scheduled_duration = "7776000s"
  key_ring                   = "projects/gp-ct-sbox-adv-dna/locations/australia-southeast1/keyRings/IAG-GDP-STORAGE-ENCRYPT-RING"
  name                       = "BQ-DS-ENCRYPT"
  purpose                    = "ENCRYPT_DECRYPT"
  rotation_period            = "7776000s"

  version_template {
    algorithm        = "GOOGLE_SYMMETRIC_ENCRYPTION"
    protection_level = "SOFTWARE"
  }
}
