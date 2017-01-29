[![](https://images.microbadger.com/badges/image/ricardson/apache-php5.4.svg)](https://microbadger.com/images/ricardson/apache-php5.4 "Get your own image badge on microbadger.com") 
[![](https://images.microbadger.com/badges/version/ricardson/apache-php5.4.svg)](https://microbadger.com/images/ricardson/apache-php5.4 "Get your own version badge on microbadger.com")

## Apache Webserver with PHP Support

A [CentOS7](https://www.centos.org) with Apache and PHP5.4


## Run the image


```sh
$ sudo docker run -d -p 80:80 ricardson/apache-php5.4
```

## How to test?


Open browser and point to: **http://localhost**

## Local php source

Replace /path/to/php/src with your php sources directory.

```sh
$ docker run -d \
    -v /path/to/php/src:/var/www/html \
    -p 80:80 \
    --name=apache-php54 \
    ricardson/apache-php5.4
```

If everthing is fine you should see the PHP Test Page.
