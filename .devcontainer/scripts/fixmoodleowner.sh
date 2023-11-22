#!/bin/bash

# cd /var/www/html && composer install

chown -R www-data:www-data /var/www/moodledata
chown -R www-data:www-data /var/www/phpunitdata
chown -R www-data:www-data /var/www/behatdata
chown -R www-data:www-data /var/www/behatfaildumps
