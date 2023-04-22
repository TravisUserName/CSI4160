#!/bin/bash

#InitializeVM.sh is used to start and stop finalproject instance 
#args [start|stop]
#run by issuing,
#sh InitializeVM.sh start

gcloud config set project noted-robot-380823

gcloud compute instances $1 finalproject --zone us-central1-a
