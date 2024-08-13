---
layout: default
deployDoc: true
---

## Deployment of microservices-based application E-commerce Sock Shop on EKS using Terraform 

**Project Goals Summarized:**
This project is about deploying a microservices-based application using automated tools to
ensure quick, reliable, and secure deployment on Kubernetes. By focusing on Infrastructure as
Code, we'll create a reproducible and maintainable deployment process that leverages modern
DevOps practices and tools.

### Pre-requisites
* [Terraform](https://www.terraform.io/downloads.html)
* [AWS Account](https://aws.amazon.com/)
* [awscli](http://docs.aws.amazon.com/cli/latest/userguide/installing.html)

### Setup AWS EKS Cluster
Begin by setting the appropriate AWS environment variables.

```
export AWS_ACCESS_KEY_ID=[YOURACCESSKEYID]
export AWS_SECRET_ACCESS_KEY=[YOURSECRETACCESSKEY]
export AWS_DEFAULT_REGION=[YOURDEFAULTREGION]
export TF_VAR_aws_region=$AWS_DEFAULT_REGION
```



##### Ingress and Certificate validation for secure connection 
To obtain a certificate for your domain that is using Ingress, you can follow these steps:

1. Ensure that you have a domain registered and configured to point to your Kubernetes cluster's IP address.

2. Install and configure cert-manager in your Kubernetes cluster. Cert-manager is a Kubernetes add-on that automates the management and issuance of TLS certificates.

``` 
kubectl apply --validate=false -f https://github.com/jetstack/cert-manager/releases/download/v1.10.0/cert-manager.yaml 
```
3. Create a Certificate resource in Kubernetes, specifying your domain name and the ingress resource that will be using the certificate.

4. Configure your Ingress resource to use the certificate. Add the `cert-manager.io/cluster-issuer` annotation to your Ingress resource, specifying the name of the ClusterIssuer or Issuer resource that you created in step 3.

5. Apply the changes to your Kubernetes cluster, and cert-manager will automatically request and manage the certificate for your domain.

> Please note that the exact steps may vary depending on your Kubernetes setup and the specific ingress controller you are using. Make sure to consult the documentation of your ingress controller and cert-manager for detailed instructions.
