terraform {
  required_providers {
  docker = {
  source = "kreuzwerker/docker"
  version = "~> 3.0"

}

}

}

provider "docker" {}

#Pull the nginx image
resource "docker_image" "nginx" {
        name = "nginx:latest"
        keep_locally = false

}


# Create a container from nginx image
resource "docker_container" "nginx" {
        image = docker_image.nginx.image_id
        name = "nginx_server"
        ports {

        internal = 80
        external = 80
}

}


