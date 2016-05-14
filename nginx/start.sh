#!/bin/sh
php-fpm -d variables_order="EGPCS" && exec nginx -g "daemon off;"
