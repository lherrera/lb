FROM alpine
RUN apk add --update bind-tools && rm -rf /var/cache/apk/*
ADD dns_script.sh /bin
ENTRYPOINT ["dns_script.sh"]
