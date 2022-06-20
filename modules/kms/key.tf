resource "google_kms_key_ring" "ey-gp-key" {
  location = "australia-southeast1"
  name     = "EY-GP-key"
  project  = "gp-ct-sbox-adv-dna"
}
# terraform import google_kms_key_ring.iag_gp_key projects/gp-ct-sbox-adv-dna/locations/australia-southeast1/keyRings/EY-GP-key

resource "google_kms_crypto_key" "ds_encrypt" {
  destroy_scheduled_duration = "86400s"
  key_ring                   = "projects/gp-ct-sbox-adv-dna/locations/australia-southeast1/keyRings/EY-GP-key"
  name                       = "DS-ENCRYPT"
  purpose                    = "ENCRYPT_DECRYPT"
  rotation_period            = "86400s"

  version_template {
    algorithm        = "GOOGLE_SYMMETRIC_ENCRYPTION"
    protection_level = "SOFTWARE"
  }
}
# terraform import google_kms_crypto_key.storage_encrypt projects/gp-ct-sbox-adv-dna/locations/australia-southeast1/keyRings/EY-GP-key/cryptoKeys/DS-ENCRYPT
