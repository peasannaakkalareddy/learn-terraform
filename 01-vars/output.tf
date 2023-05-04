output "simple_string" {
  value = var.sample_string
}

output "simple_string1" {
  value = "value of simple_string = ${var.simple_string}"
}

output "simple_list2" {
  value = var.sample_list[1]
}

output "simple_dict_num1" {
  value = var.sample_dist["number"]
}

output "simple_dict_bool" {
  value = var.sample_dict["boolean"]
}

output "env" {
  value = var.env
}

output "auto_num1" {
  value = var_auto_num1
}

output "sample1" {
  value = var.sample1
}