#data "aws_security_group" "selected" {
 # name = "allow-all1"
#}

#output "security_group_id" {
 # value = coalesce(data.aws_security_group.selected.id, "")
#}

  data "aws_security_group" "test" {}

  output "all_sg"{
    value = data.aws_security_group.test
  }
