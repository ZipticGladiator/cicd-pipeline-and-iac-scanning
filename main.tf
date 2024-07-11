provider "aws" {
  region = "eu-north-1" #Stockholm region
}

resource "aws_s3_bucket" "terraformtoday" {
  bucket = "siyatfs3bucket1"
}

resource "aws_s3_bucket" "terraformtomorrow" {
  bucket = "siyatfs3bucket2"
}

terraform {
  backend "s3" {
    bucket = "siyatfbes3bucket1"
    region = "eu-north-1"
  }
}

resource "aws_instance" "CHANGE" {
  ami           = "ami-052387465d846f3fc"
  instance_type = "t3.micro"
}

