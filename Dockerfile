FROM tomcat:8.5                                                                                                         
MAINTAINER "vijay <wangjie2@sinux.com.cn>"                                                                              
WORKDIR /usr/local                                                                                                      
RUN rm -rf /usr/local/tomcat/webapps/*                                                                                  
ADD ROOT /usr/local/tomcat/webapps/                                                                                 
EXPOSE 8080                                                                                                             
ENTRYPOINT /usr/local/tomcat/bin/startup.sh && tail -f /usr/local/tomcat/logs/catalina.out