terraform {
  backend "s3" {
    bucket = var.backend_bucket_name
    key = ""
    region = var.backend_region
    profile = var.backend_profile
    encrypt = true
    
  }
}