resource "google_kms_key_ring" "ey-gp-key" {
  location = "australia-southeast1"
  name     = "EY-GP-key"
  project  = "gp-ct-sbox-adv-dna"
}
# terraform import google_kms_key_ring.iag_gp_key projects/gp-ct-sbox-adv-dna/locations/australia-southeast1/keyRings/EY-GP-key