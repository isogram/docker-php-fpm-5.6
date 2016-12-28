##
## PHP-FPM 5.6
##
FROM centos:7
MAINTAINER "isogram" <emshidiq@gmail.com>


##
## Labels
##
LABEL \
	name="isogram's PHP-FPM 5.6 Image" \
	image="php-fpm-5.6" \
	vendor="isogram" \
	license="MIT" \
	build-date="2016-12-28"


##
## Bootstrap Scipts
##
COPY ./scripts/docker-install.sh /
COPY ./scripts/docker-entrypoint.sh /


##
## Install
##
RUN /docker-install.sh


##
## Ports
##
EXPOSE 9000


##
## Volumes
##
VOLUME /var/log/php-fpm
VOLUME /etc/php-custom.d
VOLUME /var/mail


##
## Entrypoint
##
ENTRYPOINT ["/docker-entrypoint.sh"]
