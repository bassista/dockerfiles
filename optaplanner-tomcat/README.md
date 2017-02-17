## Dockerfiles to run OptaPlanner Web Examples in Tomcat
Docker image for running OptaPlanner Web Examples 6.2 on Tomcat 8

#### Run

    docker run -p 8080:8080 bibryam/optaplanner-webexamples:6.2

#### Then go to:
http://192.168.99.100:8080/optaplanner-webexamples-6.2.0.Final


#### Alternatively, run by downloading web examples manually

    wget http://central.maven.org/maven2/org/optaplanner/optaplanner-webexamples/6.2.0.Final/optaplanner-webexamples-6.2.0.Final.war;

    docker run -it --rm -p 8080:8080 -v .:/usr/local/tomcat/webapps/ --name optaplanner-webexamples tomcat:8.0
