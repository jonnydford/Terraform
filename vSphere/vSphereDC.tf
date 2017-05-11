resource "vsphere_virtual_machine" "WindowsDC1" {
  name   = "xxxwvinfr01"
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
      ipv4_address = "10.xxx.20.93"
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

resource "vsphere_virtual_machine" "WindowsDC2" {
  name   = "xxxwvinfr02"
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
      ipv4_address = "10.xxx.20.94"
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