  # Replace placeholders in parameters.json and save to temp_parameters.json
envsubst < network/network-parameters.json > temp/temp-network-parameters.json

# Now, use temp_parameters.json with the aws cloudformation command
# aws cloudformation create-stack --stack-name mystackname --template-body file://myfile --parameters file://temp_parameters.json

# # Optionally, remove the temporary file after use
# rm temp/temp-network-parameters.json
  
#   aws cloudformation create-stack   \
#   --stack-name "udagram-dev-network" \
#   --template-body "file://network/network.yml" \
#   --parameters="temp/temp-network-parameters.json" \
#   --region="us-west-2" \