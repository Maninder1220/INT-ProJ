terraform {
  backend "s3" {
    bucket  = "terraformproject2024"
    key     = "path/to/my/key"
    region  = "us-east-1"
    profile = "terra-project"
  }
}