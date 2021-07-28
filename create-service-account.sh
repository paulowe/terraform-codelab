gcloud iam service-accounts create terraform

gcloud iam service-accounts keys create ./credentials.json --iam-account terraform@qwiklabs-gcp-04-b75f7be70aab.iam.gserviceaccount.com

gcloud projects add-iam-policy-binding $DEVSHELL_PROJECT_ID --member=serviceAccount:terraform@qwiklabs-gcp-04-b75f7be70aab.iam.gserviceaccount.com --role=roles/owner

gsutil mb gs://$DEVSHELL_PROJECT_ID-state-bucket