# Building Hello world app using Kubernetes

`alias k=kubectl`

`k version`

`k version --short`

`k config get-clusters`

`k config get-contexts`

`k get po`

`export MY_NAMESPACE=sn-labs-$USERNAME`

`docker build -t us.icr.io/$MY_NAMESPACE/hello-world:1 . && docker push us.icr.io/$MY_NAMESPACE/hello-world:1`

`k run hello-world --image us.icr.io/$MY_NAMESPACE/hello-world:1 --overrides='{"spec":{"template":{"spec":{"imagePullSecrets":[{"name":"icr"}]}}}}'`

`k get po`

`k get po -o wide`

`k describe po hello-world`

`k delete po hello-world`

