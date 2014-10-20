FROM ubuntu:precise
MAINTAINER Manuel Kiessling <manuel@kiessling.net>
 
RUN sudo apt-get install python-software-properties
RUN sudo apt-key adv --recv-keys --keyserver hkp://keyserver.ubuntu.com:80 0xcbcb082a1bb943db
sudo add-apt-repository 'deb http://mirror.i3d.net/pub/mariadb/repo/5.5/ubuntu precise main'
RUN apt-get -q -y update
RUN DEBIAN_FRONTEND=noninteractive apt-get -o Dpkg::Options::='--force-confnew' -qqy install wget psmisc libdbi-perl libdbd-mysql-perl libwrap0 perl libaio1 galera mariadb-galera-server-5.5 mariadb-server-5.5 mariadb-client-5.5 libmariadbclient18 mariadb-client-core-5.5 libssl0.9.8 libssl1.0.0 rsync netcat vim
ADD ./my.cnf /etc/mysql/my.cnf
EXPOSE 3306 4444 4567 4568
