provider "aws" {
    region= "eu-north-1" #Stockholm region
}

resource "aws s3 bucket" "terraform today" {
    bucket="CHANGE"
}

resource "aws s3 bucket" "CHANGE" {
    bucket= "CHANGE"
}

terraform {
  backend "s3" {
    bucket= "CHANGE"
    region= "eu-north-1"
  }
}

resource "aws instance" "CHANGE" {
  ami= "ami-052387465d846f3fc"
  type= "t3.micro"
}

