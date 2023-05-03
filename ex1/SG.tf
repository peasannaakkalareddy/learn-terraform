
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