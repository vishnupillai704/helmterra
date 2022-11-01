provider "helm" {
  kubernetes {
    config_path = "~/.kube/config"
  }
}

resource "helm_release" "guest11" {

  name = "guest11"

  repository = " https://vishnupillai704.github.io/helmchart"
  chart      = "guest11-0.1.0.tgz"
  namespace  = "default"

}
