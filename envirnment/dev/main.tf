module "rg_aamir"{
    source = "../../child/azurem_resource_group"
    rg_test7 = var.rg_test_new
}
module "rg_aamirst"{
    source = "../../child/azurerm_storage_account"
    qstha  = var.qsthas
    depends_on = [module.rg_aamir]
}
module "rg_aamirvnet"{
    source = "../../child/azurem_vnet"
    vnet77  = var.vnet1
    depends_on = [module.rg_aamir]
}