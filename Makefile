default:docker kubectl kubeget

NAMESPACE := nginx
DOCKERIMAGE :=bernardom/sitedobe
DOCKERVERSION:=1.0.0
kubedeploy:=./kubernetes/deploy.yaml
kubeingress:=./kubernetes/ingress.yaml
kubenamespace:=./kubernetes/namespace.yaml
kubesvc:=./kubernetes/svc.yaml
docker:
	docker build -t $(DOCKERIMAGE) . && docker push $(DOCKERIMAGE) && docker images
	

kubectl:
	kubectl apply -f $(kubedeploy) && kubectl apply -f $(kubeingress) && kubectl apply -f $(kubenamespace) && kubectl apply -f $(kubesvc)
	
kubeget:
	kubectl get po -n $(NAMESPACE) && kubectl get ingress -n $(NAMESPACE)
