resource "local_file" "pet" {

    filename = var.filename
    content  = var.content
    depends_on = [randompet.mypet]

}
Resouce "random_pet" "mypet" {
prefix = var.prefix
separator = var.separator
lenght = var.lenght
}

