This is a demonstration of deploying a website with microk8s and exposing it to the internet.

For the deployment, we will need to [install microk8s](https://microk8s.io/docs/getting-started) (you can also use any other kubernetes cluster but microk8s was used by me) and also export the environmental variables $EMAIL, $WEBSITE and $DOCKERNAME (which will be your email address to sign the certificates, your domain and your Docker username) with the command ```export NAME=value```.

Also, we installed the Ingress add-on with the command ```sudo microk8s enable ingress```

The Dockerfile takes our HTML and serves it with a base of the Alpine Nginx image. The image can be built with the command ```docker build -t your-dockerhub-username/your-website-name .``` and then pushed to Docker Hub with ```docker push $DOCKERNAME/website` 

We have the webserver-depl-svc.yaml file that deploys the latest Nginx image (future plans involve pushing a Docker image and then pulling it with custom html files)

The ingress-routes.yaml file configures the ingress route for our domain so that the traffic can be served

The letsencrypt-prod.yaml handles the certificate. After the initial deployment, you can remove the command to apply this file from the deployment script as we don't plan to change it

Finally, we have created a script to substitute the environmental variables during the deployment

