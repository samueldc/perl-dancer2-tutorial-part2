FROM httpd:2.4-bookworm

COPY ./docker/httpd.conf /usr/local/apache2/conf/httpd.conf

COPY ./docker/httpd-plack.conf /usr/local/apache2/conf/extra/httpd-plack.conf

COPY . /srv/tutorial/