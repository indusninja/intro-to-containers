docker run -d -e MYSQL_ROOT_PASSWORD=aqwe123 -e MYSQL_USER=wpuser -e MYSQL_PASSWORD=wpPassword1 -e MYSQL_DATABASE=wordpress_db -v ./database:/var/lib/mysql --name wordpressdb mariadb

docker run -d -e WORDPRESS_DB_USER=wpuser -e WORDPRESS_DB_PASSWORD=wpPassword1 -e WORDPRESS_DB_NAME=wordpress_db -p 8085:80 -v ./html:/var/www/html --link wordpressdb:mysql --name docker-blog wordpress