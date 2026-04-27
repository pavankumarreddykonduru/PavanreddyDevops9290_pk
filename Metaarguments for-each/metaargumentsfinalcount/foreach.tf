resource "local_file" "pet" {
  filename = each.value
  # for_each = var.filename
  for_each = toset(var.filename)
  content  = "I love my pets!" 
}
