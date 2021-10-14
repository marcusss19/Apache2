FROM httpd:latest
RUN RM -R /usr/local/apache2/htdocs/
RUN mkdir /usr/local/apache2/htdocs/
COPY ./technology/ /usr/local/apache2/htdocs/
