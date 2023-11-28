# learn-argocd
argocd example


## Minikube

```cmd
$ minikube start --kubernetes-version=v1.26.1 --driver=docker


$ kubectl get nodes
NAME             STATUS   ROLES           AGE     VERSION
docker-desktop   Ready    control-plane   3m34s   v1.28.2


$ kubectl describe node docker-desktop | less
```

## helm

```cmd
$ helm repo add argo https://argoproj.github.io/argo-helm
"argo" has been added to your repositories


$ helm repo update
Hang tight while we grab the latest from your chart repositories...
...Successfully got an update from the "bitnami" chart repository
...Successfully got an update from the "argo" chart repository
Update Complete. ⎈Happy Helming!⎈

$ helm search repo argocd
NAME                      	CHART VERSION	APP VERSION	DESCRIPTION
argo/argocd-applicationset	1.12.1       	v0.4.1     	A Helm chart for installing ArgoCD ApplicationSet
argo/argocd-apps          	1.4.1        	           	A Helm chart for managing additional Argo CD Ap...
argo/argocd-image-updater 	0.9.1        	v0.12.2    	A Helm chart for Argo CD Image Updater, a tool ...
argo/argocd-notifications 	1.8.1        	v1.2.1     	A Helm chart for ArgoCD notifications, an add-o...
argo/argo-cd              	3.35.4       	v2.2.5     	A Helm chart for ArgoCD, a declarative, GitOps ...

$ helm show values argo/argo-cd --version 3.35.4 > argocd-defaults.yaml
```