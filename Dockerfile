FROM tomcat:9.0-jdk17-temurin

# Limpia apps por defecto
RUN rm -rf /usr/local/tomcat/webapps/*

# OJO: ajusta el nombre del WAR si tu target cambia
# Tu build genera: target/JsfDemoApp-1.0-SNAPSHOT.war
COPY target/JsfDemoApp-1.0-SNAPSHOT.war /usr/local/tomcat/webapps/SGRRHH.war

EXPOSE 8080
CMD ["catalina.sh", "run"]
