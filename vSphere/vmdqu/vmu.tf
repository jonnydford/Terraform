resource "vsphere_virtual_machine" "VMU" {
  name   = "vmu-${var.clientname}-app1"
  folder = "${vsphere_folder.client.path}"
  resource_pool = "${var.resourcepool}"
  domain = "${var.uatdomain}"
  vcpu   = 2
  memory = 4096
  dns_suffixes = ["uat.uk.akqa"]
  dns_servers = ["10.2.30.50", "10.2.30.24"]
  
  network_interface {
    label              = "UAT Servers VLAN30"
    ipv4_address       = "${var.vmuip}"
  }

  disk {
    datastore = "${var.datastore}"
    template  = "${var.disktemplate}"
    type      = "thin"
  }

  windows_opt_config {
  	product_key = "${var.serverkey}"
  	domain = "${var.uatdomain}"
  	domain_user = "${var.uatuser}"
  	domain_user_password = "${var.uatpass}"
  }
}