This is a demonstration of deploying a website with microk8s and exposing it to the internet.

For the deployment, we will need to [install microk8s](https://microk8s.io/docs/getting-started) and also export the environmental variables $EMAIL and $WEBSITE, which will be your email address to sign the certificates and your domain with the command ```export NAME=value```.

Also, we have created a script to substitute the environmental variables during the deployment
