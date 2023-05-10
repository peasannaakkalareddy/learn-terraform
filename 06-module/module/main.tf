resource "null_resource" "nothing" {
  provisioner "local-exec" {
   command = "echo Hello from Module - input - ${var.input}"
  }
}

variable "input" {}