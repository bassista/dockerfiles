## Dockerfiles to run JBoss Fuse  
This project will let you quickly get running with Red Hat supported products of JBoss BRMS 6.1 on JBoss EAP 6.4    
To see some nice docker examples with Wildfly and Drools Workbench see [here](https://github.com/jboss-dockerfiles/drools/tree/master/drools-wb/showcase). 
 
####Download a Fuse distribution from Red Hat customer portal (you will need to sign in first)   
 - https://www.jboss.org/download-manager/file/jboss-fuse-full-6.2.0.redhat-133.zip        

####And place them in the fuse folder (or create hard links with: ln path_to_archives)  
    fuse/jboss-fuse-full-6.2.0.redhat-133.zip

####Build brms-eap image  
    docker build --rm -t bibryam/fuse . #(or use ./build.sh)

####Run fuse image by exposing 8181 to host  
    docker run -p 8181:8181 bibryam/fuse #(or run ./run.sh to expose even more ports)

####Log into Hawtio with admin and admin  
    http://localhost:8181/
