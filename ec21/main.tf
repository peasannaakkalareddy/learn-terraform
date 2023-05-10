module "sg" {
  source = "./sg"
}

module "ec21" {
  source = "./ec21"
  sg_id = module.sg_id
}

