resource "vsphere_folder" "Infrastructure" {
  path = "Infrastructure"
}

resource "vsphere_folder" "Development" {
  path = "Development"
}

resource "vsphere_folder" "QA" {
  path = "QA"
}

resource "vsphere_folder" "Tech" {
  path = "Tech"
}

resource "vsphere_folder" "_Templates" {
  path = "_Templates"
}

resource "vsphere_folder" "_Archives" {
  path = "_Archives"
}