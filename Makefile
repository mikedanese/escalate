
escalate: escalate.c
	gcc -o escalate escalate.c

image: escalate
	docker build -t gcr.io/mikedanese-k8s/escalate .

push: image
	docker push gcr.io/mikedanese-k8s/escalate
