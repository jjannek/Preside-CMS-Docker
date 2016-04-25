FROM lucee/lucee4:latest
COPY dummysite /var/www
COPY resources/server.xml /usr/local/tomcat/conf/server.xml
COPY resources/web.xml /usr/local/tomcat/conf/web.xml
COPY resources/setenv.sh /usr/local/tomcat/bin/setenv.sh
COPY resources/lucee-server.xml /opt/lucee/server/lucee-server/context/lucee-server.xml
RUN mkdir /opt/preside && \
	wget http://downloads.presidecms.com/presidecms/bleeding-edge.zip -O temp.zip && \
	unzip temp -d /opt/preside/ && \
	rm -f temp.zip && \
	wget http://urlrewritefilter.googlecode.com/files/urlrewritefilter-4.0.3.jar -O /usr/local/tomcat/lib/urlrewritefilter-4.0.3.jar