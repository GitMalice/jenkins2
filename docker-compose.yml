services:
    app:
        container_name: app
        image: myapp
        restart: always
        stdin_open: true
        tty: true
        environment:
            MYAPP_DB_HOST: mariadb
            MYAPP_DB_USER: db_user
            MYAPP_DB_PASSWORD: db_user_pass
            MYAPPDB_NAME: db_name
        volumes:
            - wordpress_data:/var/www/html
            - ./wordpress:/var/www/html
    mariadb:
        container_name: mariadb
        image: mariadb
        restart: always
        environment:
            MYSQL_DATABASE: db_name
            MYSQL_USER: db_user
            MYSQL_PASSWORD: db_user_pass
            MYSQL_RANDOM_ROOT_PASSWORD: 'root_pass'
        volumes:
            - db_data:/var/lib/mysql
    nginx:
        container_name: nginx
        image: nginx:latest
        restart: unless-stopped
        ports:
            - 80:80
            - 443:443
        volumes:
            - ./nginx/conf:/etc/nginx/conf.d
            - ./certbot/conf:/etc/nginx/ssl
            - ./certbot/data:/var/www/html
volumes:
    db_data:
