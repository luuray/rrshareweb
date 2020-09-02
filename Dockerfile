FROM alpine:latest

RUN apk add --no-cache libstdc++ libc6-compat --no-cache

RUN wget --no-check-certificate -O /opt/rrshareweb.tar.gz http://appdown.rrys.tv/rrshareweb_linux_2.20.tar.gz && tar -zxvf /opt/rrshareweb.tar.gz -C /opt && ln -s /opt/rrshareweb/data /data

VOLUME [/data]

EXPOSE 3001/tcp

CMD ["/opt/rrshareweb/rrshareweb"]
