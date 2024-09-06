services:
  db:
    image: mysql:5.7
    container_name: mysql_c
    restart: always
    volumes:
      - db-volume:/var/lib/mysql/
    environment:
      MYSQL_ROOT_PASSWORD: test
      MYSQL_DATABASE: test
      MYSQL_USER: test
      MYSQL_PASSWORD: test

  app:
    image: myapp
    container_name: myapp_c
    restart: always
    volumes:
      - ./app:/var/www/html/
    ports:
      - 8085:80
    depends_on:
      - db

  web:
    image: httpd:latest
    container_name: web
    restart: always
    ports:
      - 8084:80
    depends_on:
      - db

volumes:
  db-volume:
