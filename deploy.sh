envsubst < webserver-depl-svc.yaml | microk8s kubectl apply -f -
envsubst < ingress-routes.yaml | microk8s  kubectl apply -f -
envsubst < letsencrypt-prod.yaml | microk8s  kubectl apply -f -

