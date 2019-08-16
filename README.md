# keycloak-distribute
sudo docker run -p 8080:8080 -p 9990:9990 -e KEYCLOAK_USER=admin -e KEYCLOAK_PASSWORD=secret -e DEV_PORTAL_URL=https://www.portal.io:8080 -e MGR_USER=swang -e MGR_PASSWORD=secret swang/keycloak:0.0.17
