FROM alpine
RUN apk add --update bind-tools && rm -rf /var/cache/apk/*
ADD dns_script.sh /bin
CMD ["127.0.0.11"]
ENTRYPOINT ["dns_script.sh"]
