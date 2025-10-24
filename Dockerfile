# Verwende das fertige WildFly-Image
FROM mosaicgreifswald/wildfly:36

# Setze Zeitzone
ENV TZ=Europe/Berlin

# Expose HTTP und Management Ports
EXPOSE 8080 9990

# Copy ggf. Deployments (falls du welche hast)
# COPY deployments/ /opt/jboss/wildfly/standalone/deployments/

# Setze Environment Variables für DB-Verbindung
ENV TTP_EPIX_DB_HOST=epix-mysql
ENV TTP_EPIX_DB_PORT=3306
ENV TTP_EPIX_DB_NAME=epix
ENV TTP_EPIX_DB_USER=root
ENV TTP_EPIX_DB_PASS=root
ENV PORT=8080

# Start WildFly und binde an 0.0.0.0
CMD ["/opt/jboss/wildfly/bin/standalone.sh", "-b", "0.0.0.0"]

