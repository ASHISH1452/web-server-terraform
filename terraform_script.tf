provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "web_server" {
  ami           = "ami-0c55b159cbfafe1f0"  # Amazon Linux AMI ID
  instance_type = "t2.micro"
  key_name      = "your-key-name"
  tags = {
    Name = "WebServerInstance"
  }
}

resource "aws_s3_bucket" "static_site" {
  bucket = "your-unique-bucket-name"
  acl    = "public-read"
}
