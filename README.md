# PresideCMS Docker Image

PresideCMS is an open source CMS for the [Lucee Server](http://luc.ee) built on the [ColdBox MVC Framework](http://www.coldbox.org). It is developed and maintained by [Pixl8 Interactive](http://www.pixl8.co.uk).

[Website (http://www.presidecms.com)](http://www.presidecms.com)

[Documentation and quick start guide (http://docs.presidecms.com)](http://docs.presidecms.com)

The repository for this image can be found at [https://github.com/pixl8/Preside-CMS-Docker](https://github.com/pixl8/Preside-CMS-Docker).

## Using this image

This image is intended for use as a _base_ image for your application. It is based on the [Lucee4](https://hub.docker.com/r/lucee/lucee4/) image to provide Lucee 4.5.2 running on Tomcat 8 with a java 8 runtime. You can run this image as a daemon and spin up the Lucee server with:

```
docker run -d -p 8080:8080 pixl8/preside-cms
```

Browsing to localhost:8080 from your host will then show a dummy index page with system information. If you see that running, all is well.

## Cheatsheet

* **Webroot for your application: ** `/var/www`
* **Preside source: ** `/opt/preside`
* **Tomcat location (config, etc.): ** `/usr/local/tomcat`
* **Tomcat port: ** `8080`
* **Lucee server context: ** `/opt/lucee/server`
* **Default Lucee web context config: ** `/opt/lucee/web`

## Creating your own images

To help you get started with creating your own images for your applications, we have created our own demo repository that makes use of its own Dockerfile and a docker-compose configuration to dockerize a basic Preside-CMS application along with a linked MariaDB container. You can check it out here:

[https://github.com/pixl8/Preside-CMS-Docker-Example](https://github.com/pixl8/Preside-CMS-Docker-Example)