terraform {
  backend "s3" {
    bucket = "terra-state-here"
    key    = "terrafolder/backend"
    region = "us-west-1"
  }
}
