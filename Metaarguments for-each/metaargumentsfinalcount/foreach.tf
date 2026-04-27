resource "local_file" "pet" {
  filename = each.value
  # for_each = var.filename
  for_each = toset(var.filename) #convers list to set #
  content  = "I love my pets!" 
}
