FROM lucee/lucee4:latest
RUN mkdir /var/www/preside && \
	wget http://downloads.presidecms.com/presidecms/bleeding-edge.zip -O temp.zip && \
	unzip temp -d /var/www/preside/ && \
	rm -f temp.zip && \
	wget http://urlrewritefilter.googlecode.com/files/urlrewritefilter-4.0.3.jar -O /usr/local/tomcat/lib/urlrewritefilter-4.0.3.jar
COPY skeletonsite/*.* /var/www/
COPY skeletonsite/application /var/www/application
COPY skeletonsite/assets /var/www/assets
COPY resources/server.xml /usr/local/tomcat/conf/server.xml
COPY resources/web.xml /usr/local/tomcat/conf/web.xml
COPY resources/setenv.sh /usr/local/tomcat/bin/setenv.sh
COPY resources/lucee-server.xml /opt/lucee/server/lucee-server/context/lucee-server.xml
ENV PRESIDE_DATASOURCE.HOST presidedb
ENV PRESIDE_DATASOURCE.DATABASE_NAME preside
ENV PRESIDE_DATASOURCE.USER preside
ENV PRESIDE_DATASOURCE.PASSWORD preside