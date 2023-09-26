sed -i s/{{DB_PASS}}/$DB_PASS/g /tmp/config.sql
sed -i s/{{DB_NAME}}/$DB_NAME/g /tmp/config.sql
sed -i s/{{DB_USER}}/$DB_USER/g /tmp/config.sql

mysqld_safe --bind-address=0.0.0.0 --init-file=/tmp/config.sql