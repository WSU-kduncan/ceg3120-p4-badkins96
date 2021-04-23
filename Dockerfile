FROM httpd:2.4
# Where from on your machine, and where to on the container
COPY ./html/ /usr/local/apache2/htdocs/

