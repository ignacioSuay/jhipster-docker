#!/bin/bash

# Start mysql service and create a database called jhipster
service mysql start
MYSQL=`which mysql`
$MYSQL -u root -e "CREATE DATABASE IF NOT EXISTS jhipster"

# Run your project in production mode.
# You need to run it as a jhipster user because 
# some of the tools are not meant to be run by the root user
cd /jhipster
sudo -u jhipster -H sh -c "mvn -Pprod spring-boot:run"  



