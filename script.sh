echo "Creating docker images..."

docker build -t rodrigov10/k8s-app-backend:1.0 backend/.
docker build -t rodrigov10/k8s-app-database:1.0 database/.

echo "Sending docker images to the registry..."

docker push rodrigov10/k8s-app-backend:1.0
docker push rodrigov10/k8s-app-database:1.0

echo "Creating kubernetes resources..."

kubectl apply -f ./k8s/services.yml
kubectl apply -f ./k8s/deployment.yml