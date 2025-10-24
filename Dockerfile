# WildFly Base Image
FROM mosaicgreifswald/wildfly:36

# Setze Zeitzone
ENV TZ=Europe/Berlin

# HTTP Port für Render
EXPOSE 8080

# Externe DB (DB4Free)
ENV TTP_EPIX_DB_HOST=db4free.net
ENV TTP_EPIX_DB_PORT=3306
ENV TTP_EPIX_DB_NAME=epixwildflydb
ENV TTP_EPIX_DB_USER=epixwildflydb
ENV TTP_EPIX_DB_PASS=epixwildflydb

# Starte WildFly minimal an allen Interfaces
CMD ["/opt/jboss/wildfly/bin/standalone.sh", "-b", "0.0.0.0", "-c", "standalone.xml"]
