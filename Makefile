k3d-cluster-create:
	k3d cluster create \
		--host-alias 3.216.34.172:registry-1.docker.io,auth.docker.io \
		--host-alias 74.125.205.82:k8s.gcr.io \
		--host-alias 104.18.122.25:production.cloudflare.docker.com \
		--host-alias 172.217.16.48:storage.googleapis.com \
		--config my-cluster.yaml

k-create-deployment-hello-world:
	kubectl create deployment hello-world-dep --image=k8s.gcr.io/echoserver:1.10 --port 8080 && \
	kubectl expose deployment hello-world-dep --type=NodePort
