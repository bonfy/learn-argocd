resource "helm_release" "argocd" {
    name = "argocd"

    reposity         = "https://argoproj.github.io/argo-helm"
    chart            = "argo-cd"
    namespace        = "argocd"
    create_namespace = true
    version          = "3.35.4"

    values = [file("values/argocd.yaml")]
}