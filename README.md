# MySQL and phpMyAdmin using Docker

## Sources

### CLI

https://migueldoctor.medium.com/run-mysql-phpmyadmin-locally-in-3-steps-using-docker-74eb735fa1fc

### docker-compose

https://towardsdatascience.com/how-to-run-mysql-and-phpmyadmin-using-docker-17dfe107eab7

### MySQL volume

https://earthly.dev/blog/docker-mysql/

https://devopscell.com/docker/docker-compose/volumes/2018/01/16/volumes-in-docker-compose.html

## CLI

### MySQL

#### Starting container:

```bash
docker run --name my-own-mysql -d \
    -p 3306:3306 \
    -e MYSQL_ROOT_PASSWORD=mypass123 \
    --restart unless-stopped \
    -v ./mysql/data:/var/lib/mysql \
    mysql:8
```

The port forwarding can be omitted.

#### Entering MySQL container:

```bash
docker exec -it my-own-mysql bash
```

#### Entering MySQL client:

```bash
mysql --user=root --password=mypass123
```

### phpMyAdmin

#### Starting container:

```bash
docker run --name my-own-phpmyadmin -d --link my-own-mysql:db -p 8081:80 phpmyadmin/phpmyadmin
```

Visit: http://localhost:8081/
