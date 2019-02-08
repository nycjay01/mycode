1- Create a bucket 
  aws s3api create-bucket --bucket=terraform-serverless-example --region=us-east-1

2- Copy your zip file to your new bucket
  aws s3 cp example.zip s3://terraform-serverless-example/v1.0.0/example.zip

3- in your downloaded git clone folder (serverless-lambda) run terraform init

4- Run terraform apply. You should see a api url with "Hello World!" in a web browser pointing to your lambda/api url.
   terraform apply -var="app_version=1.0.0"

5- Change your code. Change "Hello World" in main.js and rezip the file and copy the file using the command in step 2 but with a new version number
   aws s3 cp example.zip s3://terraform-serverless-example/v1.0.1/example.zip

6- run terraform apply with a new version
   terraform apply -var="app_version=1.0.1"

7- You should see the out put URL with a new message

    base_url = https://bkqhuuz8r8.execute-api.us-east-1.amazonaws.com/test (this is an example URL)

8- For more detail see https://learn.hashicorp.com/terraform/aws/lambda-api-gateway
