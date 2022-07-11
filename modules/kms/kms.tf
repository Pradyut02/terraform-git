resource "google_kms_key_ring" "iag-gdp-storage-encrypt-ring" {
  location = "australia-southeast1"
  name     = "IAG-GDP-STORAGE-ENCRYPT-RING"
  project  = "gp-ct-sbox-adv-dna"
}

