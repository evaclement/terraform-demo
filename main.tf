provider "aws" {
    region = "eu-west-2"
    access_key = var.aws_access_key
    secret_key = var.aws_secret_key
}

resource "aws_instance" "instance" {
    ami = "ami-0648ea225c13e0729"
    instance_type = "t2.micro"
    tags = {
        Name = "instance1"
    }
}
