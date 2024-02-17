#!/bin/bash

## Check pre-requisites
# source ./test_pre_requisites.sh

## Calculate stackname and project name and add them as environment variables
NETWORKSTACKNAME=$(echo "$STACKNAMESPACE-$STACKENV-SERVERS" | tr '[:upper:]' '[:lower:]')
PROJECTNAME=$(echo "$STACKNAMESPACE-$STACKENV" | tr '[:upper:]' '[:lower:]')

## Create or update network
source ./run.sh --stackname $NETWORKSTACKNAME --template udagram/udagram.yml --parameters udagram/udagram-parameters.json --projectname $PROJECTNAME