resource "vsphere_virtual_machine" "VMD" {
  name   = "vmd-${var.clientname}-app1"
  folder = "${vsphere_folder.client.path}"
  resource_pool = "${var.resourcepool}"
  domain = "emea.akqa.local"
  vcpu   = 2
  memory = 4096
  dns_suffixes = ["emea.akqa.local", "ap.akqa.local", "na.akqa.local"]
  dns_servers = ["10.2.20.93", "10.2.20.94"]

  network_interface {
    label = "Development Servers Dynamic VLAN25"
  }

  disk {
    datastore = "${var.datastore}"
    template  = "${var.disktemplate}"
    type      = "thin"
  }

  windows_opt_config {
  	product_key = "${var.serverkey}"
  	domain = "emea.akqa.local"
  	domain_user = "${var.user}"
  	domain_user_password = "${var.pass}"
  }
}