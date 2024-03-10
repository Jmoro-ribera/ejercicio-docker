FROM httpd:2.4.58-alpine

COPY ./pagina1.html /usr/local/apache2/htdocs/index.html
COPY ./httpd.conf /usr/local/apache2/conf/httpd.conf
