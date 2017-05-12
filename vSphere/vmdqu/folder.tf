resource "vsphere_folder" "client" {
  path = "/Tech/London/${var.clientname}"
}