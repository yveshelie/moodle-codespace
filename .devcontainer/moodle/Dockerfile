FROM moodlehq/moodle-php-apache:8.1

ARG MOODLE_VERSION="MOODLE_500_STABLE"

ENV MOODLE_DBTYPE mariadb
ENV MOODLE_DBHOST localhost
ENV MOODLE_DBNAME moodle
ENV MOODLE_DBUSER moodle
ENV MOODLE_DBPASSWORD password
ENV MOODLE_PREFIX mdl_
ENV MOODLE_DBPORT 5432
ENV MOODLE_WWWROOT_URL http://localhost

# Set timezone
ENV TZ Europe/Amsterdam
RUN echo "${TZ}" > /etc/timezone \
   && dpkg-reconfigure -f noninteractive tzdata

# Install composer
COPY --from=composer /usr/bin/composer /usr/bin/composer

# Install xdebug & moodle
# RUN pecl install xdebug-3.0.4 \
#   && docker-php-ext-enable xdebug

USER www-data

RUN git clone https://github.com/moodle/moodle -b $MOODLE_VERSION --single-branch --depth 1 .

USER root
