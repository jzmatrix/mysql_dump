FROM debian:11
################################################################################
RUN apt update && \
    apt -y upgrade && \
    apt -y install mariadb-client
################################################################################
ADD config/doBackup.sh /opt/doBackup.sh
ADD config/mysqlBU /opt/mysqlBU
RUN chmod 755 /opt/doBackup.sh && \
    chmod 755 /opt/mysqlBU
################################################################################
CMD ["/opt/doBackup.sh"]