provider "google" {
  credentials = file("awesome-gist-402911-68434aac7771.json")
  project     = var.project_id
  region      = var.region
}
