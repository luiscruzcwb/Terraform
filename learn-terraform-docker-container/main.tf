#Provisionando um contêiner do servidor NGINX com arquivos apply. 
#Quando o Terraform solicitar que você confirme, digite yes e pressione ENTER.
#Verifique a existência do contêiner NGINX visitando localhost:8000 em seu navegador da web ou executando 'docker ps -a' para ver o contêiner.

terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.1"
    }
  }
}

provider "docker" {}

resource "docker_image" "nginx" {
  name         = "nginx"
  keep_locally = false
}

resource "docker_container" "nginx" {
  image = docker_image.nginx.image_id
  name  = "tutorial"

  ports {
    internal = 80
    external = 8000
  }
}
