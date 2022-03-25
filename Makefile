default: kubectl

NAMESPACE := nginx
DOCKERIMAGE :=bernardom/site-dos-guris
DOCKERVERSION:=1.0.0

kubectl:
	docker build -t $(DOCKERIMAGE):$(DOCKERVERSION) . && docker push $(DOCKERIMAGE) && docker images && kubectl apply -f . && kubectl get po -n $(NAMESPACE) && kubectl get ingress -n $(NAMESPACE)
	

