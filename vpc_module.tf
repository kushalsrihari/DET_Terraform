provider "google" {
  credentials = file("<path-to-your-service-account-json>")
}

module "vpc" {
  source  = "terraform-google-modules/network/google"
  version = "3.4.0"
  
  project_id   = var.project_id
  network_name = "my-vpc"
  region       = var.region

  subnets = {
    subnet1 = {
      subnet_name   = "subnet-1"
      subnet_ip     = "10.0.1.0/24"
      subnet_region = var.region
    }
    subnet2 = {
      subnet_name   = "subnet-2"
      subnet_ip     = "10.0.2.0/24"
      subnet_region = var.region
    }
  }
}
