provider "aws" {
  region = "eu-north-1" #Stockholm region
}

resource "aws s3 bucket" "terraformtoday" {
  bucket = "siyatfs3bucket1"
}

resource "aws s3 bucket" "terraformtomorrow" {
  bucket = "siyatfs3bucket2"
}

terraform {
  backend "s3" {
    bucket = "siyatfbes3bucket1"
    region = "eu-north-1"
  }
}

resource "aws instance" "CHANGE" {
  ami  = "ami-052387465d846f3fc"
  type = "t3.micro"
}

