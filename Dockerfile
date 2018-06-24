FROM richxsl/rhel7
ADD zhuxian.tar /
ADD zx.sql /root
ADD start.sh /usr/bin

USER root

# Edit sudoers file
# To avoid error: sudo: sorry, you must have a tty to run sudo
# RUN sed -i -e "s/Defaults    requiretty.*/ #Defaults    requiretty/g" /etc/sudoers
RUN chown root:root /etc/sudoers

RUN chmod -R 777 opt/lampp/var/mysql/zx/  
RUN chmod +x /usr/bin/start.sh

EXPOSE 80
EXPOSE 3306
EXPOSE 29000
EXPOSE 29100
EXPOSE 29200
EXPOSE 29300
EXPOSE 29400
EXPOSE 29401
EXPOSE 29700
EXPOSE 29702
EXPOSE 29712

ENTRYPOINT ["bash", "start.sh"]


