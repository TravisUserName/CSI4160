#!/bin/bash

echo "Config setup"
gcloud config set project noted-robot-380823
echo "Create Instance"
gcloud compute instances create finalproject --project=noted-robot-380823  --zone=us-central1-a  --machine-type=e2-standard-2   --network-interface=network-tier=PREMIUM,subnet=default  --maintenance-policy=MIGRATE  --provisioning-model=STANDARD  --service-account=546311991381-compute@developer.gserviceaccount.com  --scopes=https://www.googleapis.com/auth/devstorage.read_only,https://www.googleapis.com/auth/logging.write,https://www.googleapis.com/auth/monitoring.write,https://www.googleapis.com/auth/servicecontrol,https://www.googleapis.com/auth/service.management.readonly,https://www.googleapis.com/auth/trace.append  --tags=http-server,https-server   --create-disk=auto-delete=yes,boot=yes,device-name=finalproject,image=projects/debian-cloud/global/images/debian-11-bullseye-v20230306,mode=rw,size=20,type=projects/noted-robot-380823/zones/us-central1-a/diskTypes/pd-balanced --no-shielded-secure-boot  --shielded-vtpm --shielded-integrity-monitoring  --labels=ec-src=vm_add-gcloud  --reservation-affinity=any

echo "Done"
