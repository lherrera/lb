FROM nginx:alpine
RUN apk --update add php-fpm && \
    echo "clear_env = no" >> /etc/php/php-fpm.conf
ADD nginx.conf /etc/nginx/
ADD index.php /www/
ADD start.sh /home/
EXPOSE 80 443
CMD ["/home/start.sh"]
