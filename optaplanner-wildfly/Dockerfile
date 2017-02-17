FROM jboss/wildfly

MAINTAINER Bilgin Ibryam <bibryam@apache.com>

ENV OPTAPLANNER_VERSION 6.4.0.Final

ADD optaplanner-webexamples-$OPTAPLANNER_VERSION.war /opt/jboss/wildfly/standalone/deployments/

#RUN wget --no-verbose central.maven.org/maven2/org/optaplanner/optaplanner-webexamples/$OPTAPLANNER_VERSION/optaplanner-webexamples-$OPTAPLANNER_VERSION.war -P /opt/jboss/wildfly/standalone/deployments/

CMD ["/opt/jboss/wildfly/bin/standalone.sh", "-b", "0.0.0.0", "-bmanagement", "0.0.0.0"]