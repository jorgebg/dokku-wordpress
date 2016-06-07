FROM wordpress:4.5.2-apache
RUN docker-php-ext-install zip
COPY env-entrypoint.sh /env-entrypoint.sh
ENTRYPOINT ["/env-entrypoint.sh"]
CMD ["apache2-foreground"]
