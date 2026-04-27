resource "local_file" "pet" {
  filename = var.filename
  count    = 3
  content  = "I love my pets!" 
}