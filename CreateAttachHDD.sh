#!/bin/bash

echo "Creating a 50GB disk"

gcloud compute disks create hddisk --size=50GB --zone=us-central1-a

echo "Attaching disk to finalproject"

gcloud compute instances attach-disk finalproject --disk hddisk --zone=us-central1-a

