FROM centos:6.7
MAINTAINER Chaturaphut Triphet (Ruk-Com Co.,Ltd)

#Update and install easy_install
RUN yum -y install epel-release
RUN yum -y update
RUN yum -y install python-setuptools python-setuptools-devel
RUN easy_install supervisor
RUN yum -y install npm
RUN yum -y groupinstall "Development Tools"
RUN npm install -g node-gyp
RUN npm install socket.io
RUN npm install -g log.io --user "root"

ADD supervisord.conf /etc/
ADD docker-entrypoint.sh /entrypoint.sh
ADD web_server.conf /web_server.conf

EXPOSE 28777 28778
ENTRYPOINT ["/entrypoint.sh"]
