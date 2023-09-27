sed -i s/{{DB_PASS}}/$DB_PASS/g /app/wordpress/wp-config.php
sed -i s/{{DB_NAME}}/$DB_NAME/g /app/wordpress/wp-config.php
sed -i s/{{DB_USER}}/$DB_USER/g /app/wordpress/wp-config.php
sed -i s/{{DB_USER}}/$INTRA_USER/g /app/wordpress/wp-config.php
php-fpm7.4 --nodaemonize