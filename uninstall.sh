kubectl delete -f volume-controller/
kubectl delete namespace/velero clusterrolebinding/velero
kubectl delete crds -l component=velero
