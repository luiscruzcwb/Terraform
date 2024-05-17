module "servers" {
  source  = "./servers"
  servers = 2
  image_id = "ami-0885b1f6bd170450c" # Substitua pelo valor adequado

  # providers = {
  #   aws = aws.west
  # }
}


