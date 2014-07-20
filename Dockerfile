FROM centos
 
MAINTAINER windschord

RUN yum install gcc python-devel python-setuptools
RUN easy_install -UZ sentry
RUN sentry init /etc/sentry.conf.py
RUN sentry --config=/etc/sentry.conf.py createsuperuser
RUN sentry --config=/etc/sentry.conf.py start