FROM alpine:3.12
RUN apk add --no-cache minidlna=1.2.1-r2
RUN mkdir /workdir
WORKDIR /workdir
RUN chown nobody:nogroup .
COPY start.sh .
COPY minidlna.conf /etc/minidlna.conf
ENTRYPOINT ["sh", "start.sh"]
