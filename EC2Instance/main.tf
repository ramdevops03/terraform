provider "aws" {
  profile = "org"
  region     = "us-east-1"
  access_key = "AKIAYHHJV4DDY5L5RHFT"
  secret_key = "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"
}

resource "aws_instance" "project-iac" {
  ami           = "ami-0cff7528ff583bf9a"
  instance_type = "t2.micro"
  subnet_id = "subnet-dcc1b5ba"
  key_name = "april2022"
  tags = {
    Name ="SERVER01"
    Environment = "DEV"
    OS = "Linux"
    Managed = "IAC"
  }
}