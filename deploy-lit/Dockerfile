FROM jboss/keycloak:6.0.1

USER root

ADD modules /opt/jboss/modules

RUN /opt/jboss/modules/deploy-modules.sh

EXPOSE 9990

ENTRYPOINT [ "/opt/jboss/modules/docker-entrypoint.sh" ]

CMD ["-Djboss.bind.address.management=0.0.0.0"]