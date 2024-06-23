# AWS DLP Solution (Terraform) 🛡️

## Goal

The goal of this project is to implement a Data Loss Prevention (DLP) solution on an AWS S3 bucket using Amazon Macie. This solution aims to secure sensitive information stored in the S3 bucket, enable continuous monitoring and scanning through Macie, integrate findings with AWS SecurityHub for centralized security management, and set up alerts via Amazon SNS.

## Steps to Deploy 🚀

Follow these simple steps to set up and configure the AWS DLP solution using Terraform:

### 1. Clone the Repository
   ```bash
   git clone https://github.com/xotong/AWS-DLP-Solution.git
   cd AWS-DLP-Solution
   ```

### 2. Configure variables

#### Create file names variables.tf and populate with the following information

- AWS Access Key
- AWS Secret Access Key
- AWS Region
- AWS Availability Zome
- AWS Account ID
- Slack Webhook URL

### 3. Initialize Terraform:

Initialize Terraform to download necessary providers and modules.
   ```bash
   terraform init
   ```

### 4. Plan changes in Terraform:

Verify changes made in Terraform before applying the changes
   ```bash
   terraform plan
   ```

### 5. Apply changes in Terraform:

Start applying changes and confirming it by entering yes
   ```bash
   terraform apply
   ```

## Monitoring and Maintenance 🛠️

 Monitor: Use AWS Console or CLI to monitor Macie findings, SecurityHub alerts, and SNS notifications.
 Maintain: Regularly update Terraform configurations for any changes in AWS infrastructure or security policies.

## Contributing
 If you wish to contribute to this project, fork the repository, make your changes, and submit a pull request.