FROM    centos:7
RUN     yum install epel-release -y
RUN     yum install nginx -y
COPY    index.html /usr/share/nginx/html/index.html
COPY    run.sh /
RUN     chmod +x /run.sh
CMD     ["/run.sh"]