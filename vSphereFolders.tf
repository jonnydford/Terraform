#############################################
# Created by Jonny Ford, 9th March 2017		#
#############################################

# Configure the VMware vSphere Provider
provider "vsphere" {
  user           = "${var.vsphere_user}"
  password       = "${var.vsphere_password}"
  vsphere_server = "${var.vsphere_server}"
  # if you have a self-signed cert
  allow_unverified_ssl = true
}

# Create folder Infrastructure
resource "vsphere_folder" "Infrastructure" {
  path = "Infrastructure"
}

# Create folder Development
resource "vsphere_folder" "Development" {
  path = "Development"
}

# Create folder QA
resource "vsphere_folder" "QA" {
  path = "QA"
}

# Create folder Tech
resource "vsphere_folder" "Tech" {
  path = "Tech"
}

# Create folder _Templates
resource "vsphere_folder" "_Templates" {
  path = "_Templates"
}

# Create folder _Archives
resource "vsphere_folder" "_Archives" {
  path = "_Archives"
}