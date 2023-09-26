-- Create the WordPress database
CREATE DATABASE IF NOT EXISTS '{{DB_NAME}}';

-- Create the WordPress user
CREATE USER '{{DB_USER}}'@'%' IDENTIFIED BY '{{DB_PASS}}';
GRANT ALL PRIVILEGES ON wordpress.* TO '{{DB_USER}}'@'%';

-- Create the administrator user
CREATE USER 'goduser'@'%' IDENTIFIED BY 'godpass123';
GRANT ALL PRIVILEGES ON wordpress.* TO 'goduser'@'%';

FLUSH PRIVILEGES;