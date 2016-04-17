FROM registry.hub.docker.com/sgeevarg/decisionserver

RUN chown -R jboss:jboss /home/jboss/.m2

EXPOSE 8080 8080

USER root
