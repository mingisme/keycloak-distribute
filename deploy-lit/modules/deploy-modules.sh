#!/bin/bash -e

mkdir -p /opt/jboss/keycloak/modules/system/layers/base/com/swang/keycloak/fakesso/main
cd /opt/jboss/keycloak/modules/system/layers/base/com/swang/keycloak/fakesso/main
cp /opt/jboss/modules/fakesso/* .

mkdir -p /opt/jboss/keycloak/modules/system/layers/base/com/swang/keycloak/userstorage/main
cd /opt/jboss/keycloak/modules/system/layers/base/com/swang/keycloak/userstorage/main
cp /opt/jboss/modules/userstorage/* .

cd /opt/jboss/keycloak

bin/jboss-cli.sh --file=/opt/jboss/modules/cli/standalone-configuration.cli
rm -rf /opt/jboss/keycloak/standalone/configuration/standalone_xml_history

bin/jboss-cli.sh --file=/opt/jboss/modules/cli/standalone-ha-configuration.cli
rm -rf /opt/jboss/keycloak/standalone/configuration/standalone_xml_history

touch /opt/jboss/keycloak/standalone/configuration/example-users.properties

