resource "local_file" "pet" {
  filename = var.filename[count.index]
  count    = 3
  content  = "I love my pets!" 
}
