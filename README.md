#TSI Cloud Portal - network deployment
Deploy a private network in the Cloud

## Required variables for AWS

`network_name` An arbitrary name that will be assigned to your network, it has to be unique in your AWS Project

## Required variables for Google Cloud Platform

`project` The ID of the Google Cloud Project  
`network_name` An arbitrary name that will be assigned to your network, it has to be unique in your Google Cloud Project  
`region` The Google region where the network should be created  

You can obtain a list of all the available region using the `gcloud` CLI with:

```
gcloud compute regions list
```
At the moment of writing this are the available regions:  
`asia-east`, `asia-northeast`, `europe-west1`, `us-central1`, `us-east1`, `us-west1`

## Required variables for OpenStack

`network_name` An arbitrary name that will be assigned to your network, it has to be unique in your OpenStack tenancy

## AWS credential set up

Create a `Cloud Credentials` in this form:

```
AWS_ACCESS_KEY_ID
AWS_SECRET_ACCESS_KEY
AWS_DEFAULT_REGION
```

You can find the first two values (or create a new credential) in your AWS user page, under the section `IAM` --> `USERS`.  
The available regions, at the moment of writing, are the following:

Code 		| Name
|---		|---|
us-east-1	| US East (N. Virginia)
us-east-2	|US East (Ohio)
us-west-1	|US West (N. California)
us-west-2	|US West (Oregon)
ca-central-1	|Canada (Central)
eu-west-1	|EU (Ireland)
eu-central-1	|EU (Frankfurt)
eu-west-2	|EU (London)
ap-northeast-1	|Asia Pacific (Tokyo)
ap-northeast-2	|Asia Pacific (Seoul)
ap-southeast-1	|Asia Pacific (Singapore)
ap-southeast-2	|Asia Pacific (Sydney)
ap-south-1	|Asia Pacific (Mumbai)
sa-east-1	|South America (São Paulo)

Note: In order to use the default `AMI` value with `cpa-instance` you can choose `eu-west-1`
