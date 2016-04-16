FROM registry.access.redhat.com/jboss-decisionserver-6/decisionserver62-openshift

USER root

EXPOSE 8080 8080

RUN curl "https://s3-us-west-2.amazonaws.com/license-repo/repository.zip" >> /tmp/repository.zip 

RUN mkdir /home/jboss/.m2/repository

RUN chown -R jboss:jboss /home/jboss/.m2

RUN unzip /tmp/repository.zip -d /home/jboss/.m2

