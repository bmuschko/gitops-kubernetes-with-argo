# Install Argo CD
kubectl apply -f argocd-namespace.yaml
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml

# Configure Argo CD UI Access
kubectl patch svc argocd-server -n argocd -p '{"spec": {"type": "LoadBalancer"}}'
kubectl port-forward svc/argocd-server -n argocd 8080:443
