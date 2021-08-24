FROM stardog/stardog:latest

# copying log settings
COPY ./log4j2.xml /opt/stardog/server/dbms/log4j2.xml

WORKDIR /var/opt/stardog

# environment settings
ENV STARDOG_SERVER_JAVA_ARGS="-Xms12g -Xmx12g -XX:MaxDirectMemorySize=16g"
ENV STARDOG_LICENSE_PATH="/license/stardog-license-key.bin"

EXPOSE 5820

ENTRYPOINT ["/opt/stardog/bin/stardog-admin","server","start","--foreground","--port","5820","--home","/var/opt/stardog", "--disable-security"]