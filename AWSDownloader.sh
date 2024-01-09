#!/bin/bash

# Set the bucket name and folder path
bucket_name="testify-development"
folder_path="uploads/recordings/RMd9e70b7454d12df3dba6eddc61c34a82/thumbnails"

# Download files from S3 bucket on move into .train folder with a random subfolder name
mkdir -p ./train/$(uuidgen)
aws s3 sync s3://$bucket_name/$folder_path ./train/$(uuidgen)
