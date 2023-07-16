data "aws_ami" "centos" {
  owners = ["973714476881"]
  most_recent =  true
  name_regex = "Centos-8-DevOps-Practice"
}
data "aws_security_group" "allow_all" {
  name="allow_all"
}
 variable "instance_type" {
   default = "t3.micro"
 }
resource "aws_security_group" "frontend" {
  name        = data.aws_ami.centos.image_id
  instance_type = var.instance_type
  vpc_security_group_ids = [ data.aws_security_group.allow_all.id ]

  tags = {
    Name = "frontend"
   }
  }
resource "aws_route53_record" "frontend" {
  zone_id = "Z0299491JAQ87HTY8OKC"
  name    = "frontend-dev.panda4u.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.frontend.private_ip]
}