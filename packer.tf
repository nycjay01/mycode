provider "aws" {
    access_key = "ACCESSKEY"
    secret_key = "SECRETKEY"
    region     = "us-east-1"
}

resource "aws_instance" "vault-example" {
    ami                = "ami-0000000000000000"
    instance_type      = "t2.micro"
    //keypair_name       = "packertest"
}