FROM registry.access.redhat.com/jboss-decisionserver-6/decisionserver62-openshift

EXPOSE 8080 8080

RUN curl "https://s3-us-west-2.amazonaws.com/coolstore-repo/repository.zip" >> /tmp/repository.zip 

RUN unzip /tmp/repository.zip -d /root/.m2

ENV KIE_CONTAINER_DEPLOYMENT='LICENSE=com.redhat:license:1.0.0'
