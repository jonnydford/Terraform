#############################################
# Created by Jonny Ford, 9th March 2017		#
# Edit the following areas: 				#
# 	name									#
# 	gateway									#
# 	ipv4_address							#
# 	datastore								#
# 	dns_server								#
#############################################


# Configure the VMware vSphere Provider
provider "vsphere" {
  user           = "${var.vsphere_user}"
  password       = "${var.vsphere_password}"
  vsphere_server = "${var.vsphere_server}"
  # if you have a self-signed cert
  allow_unverified_ssl = true
}

resource "vsphere_virtual_machine" "Lync" {
  name   = "xxxLync01"
  folder = "Infrastructure"
  vcpu   = 2
  memory = 4096
  domain = "emea.akqa.local"
  dns_suffix = "emea.akqa.local"
  dns_server = "10.xxx.20.93", "10.xxx.20.94"
  resource_pool = "Infrastructure Critical"

  gateway = "10.xxx.20.1"

  network_interface {
      label = "Internal Servers VLAN20"
      ipv4_address = "10.xxx.20.x"
      ipv4_prefix_length = "24"
  }

  disk {
    datastore = "xxxVOL01"
    template = "templates/WindowsServer2012R2"
  }
    
  windows_opt_config {
  	product_key = "xxx.xxxx"
  	domain = "emea.akqa.local"
  	domain_user = "emea\user.name-admin"
  	domain_password = "yourPasswordHere"
  }
}