FROM centos:latest

CMD sudo yum install httpd -y

COPY index.html /var/www/html/index.html

CMD /bin/systemctl start httpd.service



