FROM ubuntu:16.04

RUN apt-get update && apt-get install -y openssh-server
RUN mkdir /var/run/sshd
RUN echo 'root:screencast' | chpasswd
RUN sed -i 's/PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config

# SSH login fix. Otherwise user is kicked off after login
RUN sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd

ENV NOTVISIBLE "in users profile"
RUN echo "export VISIBLE=now" >> /etc/profile
RUN apt-get install -y nginx
#COPY index.html /var/www/html/index.html
RUN apt-get install -y bc && apt-get install -y iputils-ping
COPY sysinfo2.sh /var/www/html/sysinfo2.sh

EXPOSE 22 80 443
#CMD ["/usr/sbin/sshd", "-D"]
CMD ["nginx", "-g", "daemon off;"]
