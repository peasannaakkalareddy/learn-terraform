data "aws_ami" "centos" {
  most_recent = true
  name_regex  = "Centos-8-DevOps-Practice"
  owners      = ["973714476881"]
}

resource "aws_instance" "HelloWorld" {
  ami           = "ami-0b5a2b5b8f2be4ec2"
  instance_type = "t3.micro"

  tags = {
    Name = "HelloWorld"
  }
}

resource "aws_route53_record" "HelloWorld" {
  zone_id = "Z0299491JAQ87HTY8OKC"
  name    = "HelloWorld-dev.cskvsmi.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.HelloWorld.private_ip]
}

resource "aws_instance" "frontend" {
  ami           = "ami-0b5a2b5b8f2be4ec2"
  instance_type = "t3.micro"

  tags = {
    Name = "frontend"
  }
}

resource "aws_route53_record" "frontend" {
  zone_id = "Z0299491JAQ87HTY8OKC"
  name    = "frontend-dev.cskvsmi.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.HelloWorld.private_ip]
}

resource "aws_instance" "mongodb" {
  ami           = "ami-0b5a2b5b8f2be4ec2"
  instance_type = "t3.micro"

  tags = {
    Name = "mongodb"
  }
}

resource "aws_route53_record" "mongodb" {
  zone_id = "Z0299491JAQ87HTY8OKC"
  name    = "mongodb-dev.cskvsmi.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.HelloWorld.private_ip]
}

resource "aws_instance" "catalogue" {
  ami           = "ami-0b5a2b5b8f2be4ec2"
  instance_type = "t3.micro"

  tags = {
    Name = "catalogue"
  }
}

resource "aws_route53_record" "catalogue" {
  zone_id = "Z0299491JAQ87HTY8OKC"
  name    = "catalogue-dev.cskvsmi.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.HelloWorld.private_ip]
}

resource "aws_instance" "user" {
  ami           = "ami-0b5a2b5b8f2be4ec2"
  instance_type = "t3.micro"

  tags = {
    Name = "user"
  }
}

resource "aws_route53_record" "user" {
  zone_id = "Z0299491JAQ87HTY8OKC"
  name    = "user-dev.cskvsmi.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.HelloWorld.private_ip]
}


resource "aws_instance" "redis" {
  ami           = "ami-0b5a2b5b8f2be4ec2"
  instance_type = "t3.micro"

  tags = {
    Name = "redis"
  }
}

resource "aws_route53_record" "redis" {
  zone_id = "Z0299491JAQ87HTY8OKC"
  name    = "redis-dev.cskvsmi.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.HelloWorld.private_ip]
}
resource "aws_instance" "cart" {
  ami           = "ami-0b5a2b5b8f2be4ec2"
  instance_type = "t3.micro"

  tags = {
    Name = "cart"
  }
}

resource "aws_route53_record" "cart" {
  zone_id = "Z0299491JAQ87HTY8OKC"
  name    = "cart-dev.cskvsmi.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.HelloWorld.private_ip]
}
resource "aws_instance" "mysql" {
  ami           = "ami-0b5a2b5b8f2be4ec2"
  instance_type = "t3.micro"

  tags = {
    Name = "mysql"
  }
}

resource "aws_route53_record" "mysql" {
  zone_id = "Z0299491JAQ87HTY8OKC"
  name    = "mysql-dev.cskvsmi.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.HelloWorld.private_ip]
}

resource "aws_instance" "shipping" {
  ami           = "ami-0b5a2b5b8f2be4ec2"
  instance_type = "t3.micro"

  tags = {
    Name = "shipping"
  }
}

resource "aws_route53_record" "shipping" {
  zone_id = "Z0299491JAQ87HTY8OKC"
  name    = "shipping-dev.cskvsmi.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.HelloWorld.private_ip]
}
resource "aws_instance" "rabbitmq" {
  ami           = "ami-0b5a2b5b8f2be4ec2"
  instance_type = "t3.micro"

  tags = {
    Name = "rabbitmq"
  }
}

resource "aws_route53_record" "rabbitmq" {
  zone_id = "Z0299491JAQ87HTY8OKC"
  name    = "rabbitmq-dev.cskvsmi.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.HelloWorld.private_ip]
}

resource "aws_instance" "payment" {
  ami           = "ami-0b5a2b5b8f2be4ec2"
  instance_type = "t3.micro"

  tags = {
    Name = "payment"
  }
}

resource "aws_route53_record" "payment" {
  zone_id = "Z0299491JAQ87HTY8OKC"
  name    = "payment-dev.cskvsmi.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.HelloWorld.private_ip]
}