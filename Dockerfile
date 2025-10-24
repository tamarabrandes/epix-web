FROM mosaicgreifswald/wildfly:36

ENV TZ=Europe/Berlin
EXPOSE 8080 9990

# Optional: Deployments kopieren
# COPY deployments/ /opt/jboss/wildfly/standalone/deployments/

# Externe DB (DB4Free)
ENV TTP_EPIX_DB_HOST=db4free.net
ENV TTP_EPIX_DB_PORT=3306
ENV TTP_EPIX_DB_NAME=epixwildflydb
ENV TTP_EPIX_DB_USER=epixwildflydb
ENV TTP_EPIX_DB_PASS=epixwildflydb
ENV PORT=8080

CMD ["/opt/jboss/wildfly/bin/standalone.sh", "-b", "0.0.0.0"]
