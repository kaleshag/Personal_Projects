# Building hello world image
`docker built . -t gkimage:v1`
*Listing the images available and gkimage should be available here*
`docker images`
*Running the container with gkimage and using port 8080 to expose it*
`docker run -dp 8080:8080 gkimage:v1`
*We can test the connectivity with curl command*
`curl localhost:8080`
*This will print the output as*
`Hello World from <containerid>! Your app is up and running!`
*To stop the container*
`docker stop <containerid>`
*If we want to stop all containers*
`docker stop $(docker ps -q)`

**And here I am using one IBM Cloud test account**
`alias ic=ibmcloud
ic --version
ic target
ic cr namespaces`
*I have namespace something like sn-labs-kg1*
`ic cr regions-et us-south
ic cr login`
*Now exporting my namespace to env variable*
`export MY_NAMESPACE=sn-labs-$USERNAME`
*Tagging this image, so that we can push it to IBM Cloud Container Registry*
`docker tag gkimage:v1 us.icr.io/$MY_NAMESPACE/hello-world:1
docker push us.icr.io/$MY_NAMESPACE/hello-world:1
ic cr images
ic cr images --restrict $MY_NAMESPACE`