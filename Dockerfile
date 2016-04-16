FROM registry.hub.docker.com/sgeevarg/decisionserver

RUN mkdir /home/jboss/.m2/repository

RUN curl https://s3-us-west-2.amazonaws.com/license-repo/repository.zip | unzip /tmp/repository.zip -d /home/jboss/.m2

RUN chown -R jboss:jboss /home/jboss/.m2

EXPOSE 8080 8080

USER root
