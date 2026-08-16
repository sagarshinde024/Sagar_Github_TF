rgs={
  rg1 = {
    name     = "dev-rg"
    location = "Central India"
  }
  rg2 = {
    name     = "prod-rg"
    location = "Central India"
  }
  rg3 = {
    name     = "uat-rg"
    location = "Central India"
  }
}


subnets = {
  subnet1 = {
    name                 = "dev-subnet"
    resource_group_name  = "dev-rg"
    virtual_network_name = "dev-vnet"
    address_prefixes     = ["10.192.0.0/16"]
  }
}

vnets = {
  vnet1 = {
    name                = "dev-vnet"
    resource_group_name = "dev-rg"
    location            = "Central India"
    address_space       = ["10.192.0.0/16"]
  }
  vnet2 = {
    name                = "uat-vnet"
    resource_group_name = "dev-rg"
    location            = "Central India"
    address_space       = ["10.160.0.0/16"]
  }
}

pips = {
  pip1 = {
    name                = "dev-pip"
    resource_group_name = "dev-rg"
    location            = "Central India"
    allocation_method   = "Static"
  }
}

nics = {
  nic1 = {
    name                          = "dev-nic"
    resource_group_name           = "dev-rg"
    location                      = "Central India"
    allocation_method             = "Static"
    ip_config_name                = "dev_ip_config"
    private_ip_address_allocation = "Dynamic"
    subnet_name                   = "dev-subnet"
    vnet_name                     = "dev-vnet"
    pip_name                      = "dev-pip"

  }
}

vms = {
  vm1 = {
    name                            = "dev-vm"
    resource_group_name             = "dev-rg"
    location                        = "Central India"
    size                            = "Standard_D4_v5"
    admin_username                  = "adminuser"
    admin_password                  = "adminuser@45678"
    disable_password_authentication = false
    private_ip_address_allocation   = "Dynamic"
    subnet_name                     = "dev-subnet"
    vnet_name                       = "dev-vnet"
    pip_name                        = "dev-pip"
    nic_name                        = "dev-nic"

  }
}

