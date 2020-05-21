terraform {
  backend "gcs" {
    bucket = "mm-webapps-prod"
    prefix = "states/projects/lighthouse"
  }
}

provider "google" {
  project = "mm-webapps-prod"
  region  = "eu-west1"
}


variable "project" {
  type    = string
  default = "mm-webapps-prod"
}
variable "brands" {
  default = [
    "yoigo",
    "llamaya",
    "pepephone",
    "masmovil",
  ]
}
