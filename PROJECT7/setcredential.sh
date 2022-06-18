#!/bin/bash
#Set up Credential GCP
echo "Set up Credential GCP"
export project_id=$(gcloud config get-value project)
echo "Enter your GCP Service Account ID"
read service_account_id

function credential {
    gcloud iam service-accounts create $service_account_id --display-name "my service account"
    gcloud projects add-iam-policy-binding $project_id \
    --member serviceAccount:$service_account_id@$project_id.iam.gserviceaccount.com --role roles/editor
    echo "Your GCP Service Account ID is $service_account_id@$project_id.iam.gserviceaccount.com"
    echo Donwload JSON file from GCP Console
    gcloud iam service-accounts keys create credentials.json --iam-account=$service_account_id@$project_id.iam.gserviceaccount.com
}
credential 
