FROM centos:latest
MAINTAINER Bilgin Ibryam <bibryam@apache.com>

#Add Fuse version to the current directory
ENV FUSE_DISTRIBUTION jboss-fuse-full-6.2.0.redhat-133.zip
ENV FUSE_INSTALL jboss-fuse-6.2.0.redhat-133

# Execute system update
RUN yum -y update && yum clean all

# Install packages necessary to run Fuse
RUN yum -y install unzip java-1.7.0-openjdk-devel && yum clean all

# Create a user and group used to launch processes
RUN groupadd -r jboss -g 1000 && useradd -u 1000 -r -g jboss -m -d /opt/jboss -s /sbin/nologin -c "JBoss user" jboss

USER jboss

ENV JAVA_HOME /usr/lib/jvm/java


# Add the Fuse distribution to image
ADD . /opt/jboss

RUN ls -la /opt/jboss
RUN unzip -q -o -d $HOME/ $HOME/$FUSE_DISTRIBUTION \
    && rm $HOME/$FUSE_DISTRIBUTION \
    && mv $HOME/$FUSE_INSTALL $HOME/fuse

ENV FUSE_HOME /opt/jboss/fuse
ENV JAVA_OPTS -XX:MaxPermSize=256m -Xms256m -Xmx1024m


# assigning higher default ulimits
#RUN echo "fuse - nproc 4096" >> /etc/security/limits.conf && echo "fuse - nofile 4096" >> /etc/security/limits.conf

# Enable admin user
RUN sed -i 's/#admin/admin/' $FUSE_HOME/etc/users.properties

# Uses this property as ssh git port number.
EXPOSE 22 8101 8181 44444 1099 61616

# Run Business Central
WORKDIR $FUSE_HOME/bin/
CMD ["./fuse"]
