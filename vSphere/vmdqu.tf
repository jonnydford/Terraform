provider "vmware" {
  vcenter_server = "vcenter.domain.local"
  user = "domain\user"
  password = "secret"
  insecure_connection = true
}

resource "vsphere_folder" "ClientName" {
  path = "Tech/Client/"
}

resource "vmware_virtual_machine" "dev" {
  name =  "vmd-client-app1"
  image = "Templates/Ubuntu14.04"

  folder = "Tech/Client/ClientName"
  resource_pool = "Development"

  cpus = 1
  memory = 4096
  configuration_parameters = {
    isolation.tools.copy.disable = "false"
    isolation.tools.paste.disable = "false"
  }

  power_on = true

  domain = "vsphere.test"
  ip_address = "192.168.1.10"
  subnet_mask = "255.255.255.0"
  gateway = "192.168.1.1"

  provisioner "remote-exec" {
    connection {
      user = "user"
      password = "secret"
    }
    inline = "uname"
  }

}

output "address" {
  value = "${vmware_virtual_machine.dev.ip_address}"
}