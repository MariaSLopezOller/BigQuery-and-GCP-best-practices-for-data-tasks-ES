# SSH linux interface
#Your Cloud Platform project in this session is set to qwiklabs-gcp-04-77aa59a15ac6.
#output - Use “gcloud config set project [PROJECT_ID]” to change to a different project.
export GOOGLE_CLOUD_PROJECT=$(gcloud config get-value core/project)
#output - Your active configuration is: [cloudshell-19954]
gcloud iam service-accounts create my-natlang-sa \
   --display-name "my natural language service account"
#output - Created service account [my-natlang-sa].
student_04_fbfdc35bd259@cloudshell:~ (qwiklabs-gcp-04-77aa59a15ac6)$ gcloud iam service-accounts keys create ~/key.json \
>   --iam-account my-natlang-sa@${GOOGLE_CLOUD_PROJECT}.iam.gserviceaccount.com
#output created key [956xxxxxxxxxxxxxxxxxx] of type [json] as [/home/student_04_fbfdc35bd259/key.json] for [my-natlang-sa@qwiklabs-gcp-04-77aa59a15ac6.iam.gserviceaccount.com]
export GOOGLE_APPLICATION_CREDENTIALS="/home/USER/key.json"
