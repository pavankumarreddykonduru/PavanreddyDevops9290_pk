resource "local_file" "pet" {
  filename = each.value
  # for_each = var.filename
  for_each = toset(var.filename) #converts list to set #
  content  = "I love my pets!" 
}

output "pets" {
  value = local_file.pet
}