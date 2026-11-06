##Apache web Server
FROM httpd:2.4
##copies my website apache web directory
COPY web-content/ /usr/local/apache2/htdocs/
