provider "aws" {
  region     = "us-east-1"
  access_key = ""
  secret_key = ""
}

resource "aws_instance" "ec2instance" {
  ami           = "ami-0cff7528ff583bf9a"
  instance_type = "t2.micro"
  subnet_id = "subnet-dcc1b5ba"
  key_name = "april2022"
  tags = {
    Name ="SERVER10"
    Environment = "DEV"
    OS = "Linux"
    Managed = "IAC"
  }
}
