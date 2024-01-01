FROM tomcat:9

COPY /was/instance/test1/conf/ /usr/local/tomcat/conf/
COPY /was/instance/test1/webapps/ /usr/local/tomcat/webapps/
COPY /deploy-root/test1 /usr/local/tomcat/

EXPOSE 8083

COPY /was/launcher/test1-startup.sh /usr/local/tomcat/bin/
COPY /was/launcher/test1-stop.sh /usr/local/tomcat/bin/

CMD ["catalina.sh", "run"]
