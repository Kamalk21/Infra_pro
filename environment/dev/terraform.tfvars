rg = {
  rg1 = {
    name     = "kamalrg"
    location = "australiacentral"
  }
}

network = {
  network1 = {
    name                = "vnetkamal"
    location            = "australiacentral"
    resource_group_name = "kamalrg"
    subnet = {
      subnet1 = {
        name             = "subkamal1"
        address_prefixes = ["10.0.1.0/24"]
      }
      subnet2 = {
        name             = "subkamal2"
        address_prefixes = ["10.0.2.0/26"]
      }
    }
  }
}

ip = {
  ip1 = {
    name                = "pipkamal"
    resource_group_name = "kamalrg"
    location            = "australiacentral"
  }
}

linux = {
  linux1 = {
    vmname              = "vmkamal"
    resource_group_name = "kamalrg"
    location            = "australiacentral"
    size                = "Standard_F2"
    nicname             = "nickamal"
    ip_configuration = {
      ip_configuration1 = {
        name                          = "pipkamalpconfiguration"
        private_ip_address_allocation = "Dynamic"
      }
    }
  }
}
