provider "google" {
  version = "~> 1.4.0"
  credentials = "${file("/home/hiroki/gcp-service-account.json")}"
  project = "ordinal-throne-216302"
  region  = "asia-northeast1"
}
