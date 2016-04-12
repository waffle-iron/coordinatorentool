#!/usr/bin/env bash

cd ..

echo Building discovery-server...
cd coordinatoren-discovery; gradle --daemon clean build distDocker; cd -

echo Building business-unit-service...
cd coordinatoren-businessunit-service; gradle --daemon clean build distDocker; cd -

echo Building contract-service...
cd coordinatoren-contract-service; gradle --daemon clean build distDocker; cd -
