module "rg"{
    source="../child/azurerm_resource_group"
    rgs=var.rgs
}

module "vnet"{
    depends_on=[module.rg]
    source="../child/azurerm_virtual_network"
    vnets=var.vnets 
}

module "subnet"{
     depends_on=[module.vnet]
    source="../child/azurerm_subnet"
    subnets=var.subnets
}

module "nic"{
    depends_on=[module.subnet,module.pip]
    source="../child/azurerm_nic"
    nics=var.nics
}

module "pip"{
     depends_on=[module.rg]
    source="../child/azurerm_public_ip"
    pips=var.pips
}

module "vm"{
    depends_on=[module.nic]
    source="../child/azurerm_vm"
    vms=var.vms
}