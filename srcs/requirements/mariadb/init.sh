sed -i s/{{DB_PASS}}/$DB_PASS/g /tmp/config.sql
sed -i s/{{DB_NAME}}/$DB_NAME/g /tmp/config.sql
sed -i s/{{DB_USER}}/$DB_USER/g /tmp/config.sql

sed -i s/{{WD_PASS}}/$WD_PASS/g /tmp/config.sql
sed -i s/{{WD_EMAIL}}/$WD_EMAIL/g /tmp/config.sql
sed -i s/{{WD_USER}}/$WD_USER/g /tmp/config.sql
sed -i s/{{WD_NICK}}/$WD_NICK/g /tmp/config.sql
mysqld_safe --init-file=/tmp/config.sql --bind-address=0.0.0.0
