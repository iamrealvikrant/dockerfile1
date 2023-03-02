# Use the official Tomcat image as the base image
FROM tomcat:9.0.72-jre8-temurin-jammy

# Working directory
WORKDIR /usr/local/tomcat

# Expose port 8080
EXPOSE 8080

# copying gameofwar
COPY petclinic.war webapps/

# Start Tomcat when the container launches
CMD ["catalina.sh", "run"]
