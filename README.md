# devops-coding-challenge
DevOps Coding Challenge

### Objectives
1. An inexperienced developer has created multiple deployments in a test cluster and there are some errors that prevent the pods to start. Can you fix them and explain what was wrong in each case and how you fixed the problem? (there are 3 deployments and 1 stateful set). 
2. The stateful set “prometheus” has 2 scrape configs named “kubernetes-pods” and “kubernetes-kubelet” (you can see the configuration for these jobs in the ConfigMap “prometheus”), but looking in Prometheus, they don’t show up in the list of Targets being scraped. Can you explain why and fix the problem? After fixing it, why are nginx pods not being scraped? (you don’t have to fix this, just explain it)
3. Write a small script in Bash that iterates over the GCS buckets present in the test project and removes those that are empty (those with no files in them). The script doesn’t have to run the actual command to delete the bucket, just print it.

