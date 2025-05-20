resource "aws_instance" "main" {
  ami =  var.ami
  instance_type = var.instance_type
  vpc_security_group_ids = ["sg-0665a56c7cd09a0e0"]
  instance_market_options {
    market_type = "spot"
    spot_options {
      instance_interruption_behavior = "stop"
      spot_instance_type             = "persistent"
    }
  }

  tags  = var.tags
}


resource "aws_route53_record" "public" {
  name    = "${var.tags["Name"]}"
  type    = "A"
  zone_id = "Z06926562JRB6HEXD0QMM"
  records = [aws_instance.main.public_ip]
  ttl     = 10
}


resource "aws_route53_record" "private" {
  name    = "${var.tags["Name"]}-internal"
  type    = "A"
  zone_id = "Z06926562JRB6HEXD0QMM"
  records = [aws_instance.main.private_ip]
  ttl     = 10
}


variable "ami" {}
variable "instance_type" {}
variable "tags" {}