resource "digitalocean_kubernetes_cluster" "lab-kubernetes-cluster" {
  name    = "django-kubernetes-tor1-1650372428244"
  region  = "TOR1"
  version = "1.22.8-do.1"

  node_pool {
    name       = "django-kubernetes-pool"
    size       = "s-2vcpu-2gb"
    node_count = 2
  }
}

resource "digitalocean_database_cluster" "lab-database-cluster" {
  name       = "django-kubernetes"
  engine     = "pg"
  version    = "13"
  size       = "db-s-1vcpu-1gb"
  region     = "TOR1"
  node_count = 1
}