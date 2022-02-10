1- install tekton from offical website
2- install tekton dashboard using tekton-dashboard-release.yaml
3- install the docker registry using helm chart : 
- helm repo add twuni https://helm.twun.io
- helm install registry twuni/docker-registry --version 1.10.0 --namespace kube-system --set service.type=NodePort  --set service.nodePort=31500

4-install the docker registry proxy using helm chart :
- helm repo add incubator https://charts.helm.sh/incubator
- helm install registry-proxy incubator/kube-registry-proxy --version 0.3.2 --namespace kube-system --set registry.host=registry-docker-registry.kube-system --set registry.port=5000  --set hostPort=5000

5- install the docker registry ui using registry-ui.yaml

6- install the tekton cli from offical website

Note: use can add a file "values.yaml" to insert values and call this file using the flag -f in helm install command