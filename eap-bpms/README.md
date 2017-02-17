## Dockerfiles to run JBoss BPMS on JBoss EAP   
This project will let you quickly get running with Red Hat supported products of JBoss BPMS 6.1 on JBoss EAP 6.4    
To see some nice docker examples with Wildfly and Drools Workbench see [here](https://github.com/jboss-dockerfiles/drools/tree/master/drools-wb/showcase). 
 
####Download from Red Hat customer portal (you will need to sign in first) EAP and BPMS  
 - http://www.jboss.org/download-manager/file/jboss-bpmsuite-6.1.0.GA-deployable.zip
 - http://www.jboss.org/download-manager/file/jboss-eap-6.4.0.GA.zip

####And place them in the bpms-eap folder (or create hard links with: ln path_to_archives)  
    bpms-eap/jboss-eap-6.4.0.zip    
    bpms-eap/jboss-bpms-6.1.0.GA-deployable.zip  

####Build bpms-eap image  
    docker build --rm -t bibryam/eap-bpms . #(or use ./build.sh)

####Run bpms-eap image by exposing 8080 to host  
    docker run -p 8080:8080 bibryam/eap-bpms #(or run ./run.sh to expose even more ports)

####Log into Business central with bpmsAdmin and pa$word  
    http://localhost:8080/business-central

####Log into EAP admin console with admin and pa$word1 (you may have to expose port 9990) 
    http://localhost:9990

####Clone git repo (you may have to expose more ports)  
    git clone ssh://bpmsAdmin@localhost:8001/repository1  (read/write access) 
    git clone git://localhost:9418/repository1   (read only access)
            