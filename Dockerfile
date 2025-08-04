# Use official Tomcat base image
FROM tomcat:9.0-jdk17

# Remove default webapps to avoid conflicts
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy your WAR file into the Tomcat webapps directory
COPY community-chat.war /usr/local/tomcat/webapps/community-chat.war
# Expose the default Tomcat port
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]