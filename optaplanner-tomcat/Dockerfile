FROM tomcat:8.0

MAINTAINER Bilgin Ibryam <bibryam@apache.com>

ENV OPTAPLANNER_VERSION 6.2.0.Final

RUN rm -fr /usr/local/tomcat/webapps/* && \
wget --no-verbose central.maven.org/maven2/org/optaplanner/optaplanner-webexamples/$OPTAPLANNER_VERSION/optaplanner-webexamples-$OPTAPLANNER_VERSION.war -P /usr/local/tomcat/webapps/

CMD ["catalina.sh", "run"]




