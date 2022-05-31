FROM debian:11
################################################################################
RUN apt update && \
    apt -y upgrade && \
    apt -y install mariadb
################################################################################
ADD config/doBackup.sh /opt/doBackup.sh
RUN chmod 755 /opt/doBackup.sh
################################################################################
CMD ["/opt/doBackup.sh"]