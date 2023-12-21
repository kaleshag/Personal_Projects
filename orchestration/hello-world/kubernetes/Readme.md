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

`k create -f hello-world-create.yaml`

`k delete po hello-world`

`k apply -f hello-world-apply.yaml`

`k get deploy`

`k get po`

`k delete pod hello-world-749d5955dc-dtbg7 && kubectl get pods`

`k expose deploy/hello-world`

`k expose deploy/hello-world`

`k get svc`

**To start the proxy service**

`k proxy`

`curl -L localhost:8001/api/v1/namespaces/sn-labs-$USERNAME/services/hello-world/proxy`

**Run the command which runs a for loop ten times creating 10 different pods and note names for each new pod.**

`for i in `seq 10`; do curl -L localhost:8001/api/v1/namespaces/sn-labs-$USERNAME/services/hello-world/proxy; done`

`k delete deploy/hello-world svc/hello-world`