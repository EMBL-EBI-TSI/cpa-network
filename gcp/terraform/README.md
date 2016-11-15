
# Instructions

Copy `terraform.tfvars.example` in a `terraform.tfvars` and compile the mandatory variables.

    cp terraform.tfvars.example terraform.tfvars
    vim terraform.tfvars

This configuration will be ignored by the git repository.

## Required variables

`project` The ID of the Google Cloud project  
`network_name` An arbitrary name that will be assigned to your network, it has to be unique in your Google Cloud project  
`region` The Google region where the network should be created  

You can obtain a list of all the available region using the `gcloud` CLI with:

```
gcloud compute regions list
```
At the moment of writing this are the available regions:  
`asia-east`, `asia-northeast`, `europe-west1`, `us-central1`, `us-east1`, `us-west1`

## Authentication JSON File

Authenticating with Google Cloud services requires a JSON file which we call the *account file*.

This file is downloaded directly from the [Google Developers Console](https://console.developers.google.com/). To make the process more straightforwarded, it is documented here:

Log into the [Google Developers Console](https://console.developers.google.com/) and select a project.

The API Manager view should be selected, click on "Credentials" on the left, then "Create credentials", and finally "Service account key".

Select "Compute Engine default service account" in the "Service account" dropdown, and select "JSON" as the key type.

Clicking "Create" will download your `credentials`.

Once you have your credentials you can export them in your environment with:

    export GOOGLE_CREDENTIALS="`cat credentials.json`"

## Deploy

Test the configuration with:

    terraform plan

Deploy the instance:

    terraform apply

Remove the instance:

    terraform destroy
