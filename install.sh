kubectl apply -f velero/minio.yaml
kubectl apply -f volume-controller/
kubectl apply -f velero/change-storage-class-config.yaml
velero install \
     --provider aws \
     --plugins velero/velero-plugin-for-aws:v1.0.0 \
     --bucket velero \
     --secret-file ./velero/credentials-velero \
     --use-restic \
     --use-volume-snapshots=false \
     --backup-location-config region=minio,s3ForcePathStyle="true",s3Url=http://192.168.0.21:30086
