# Configure the VMware vSphere Provider
provider "vsphere" {
  user            = "${var.vsphere_user}"
  password        = "${var.vsphere_password}"
  vsphere_server  = "${var.vsphere_vcenter}"
  allow_unverified_ssl = true
}