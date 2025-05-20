module "ec2" {
  for_each = var.servers
  source = "./modules/ec2"
  ami    = each.value["ami"]
  instance_type =  each.value["instance_type"]
  tags = each.value["tags"]
}




