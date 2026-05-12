# terraform/main.tf

# 1. Definimos que vamos a usar Helm
provider "helm" {
  kubernetes {
    config_path = "~/.kube/config" # Esto apunta a donde Minikube guarda su acceso
  }
}

# 2. Le decimos a Terraform que instale nuestro Chart
resource "helm_release" "i2b_app" {
  name       = "i2b-app-release"
  chart      = "../i2b-chart" # La carpeta que creaste con Helm
  namespace  = "default"

  # Aquí pasamos los valores que pide el reto, como los logs persistentes
  set {
    name  = "image.repository"
    value = "i2b-app"
  }

  set {
    name  = "image.tag"
    value = "latest"
  }
}