FROM centos
 
MAINTAINER windschord

RUN yum install -y gcc python-devel python-setuptools
RUN easy_install -UZ sentry
RUN sentry init /etc/sentry.conf.py
RUN sentry --config=/etc/sentry.conf.py upgrade
CMD ["sentry --config=/etc/sentry.conf.py start"]

