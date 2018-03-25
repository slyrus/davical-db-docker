
FROM sly/postgres96
MAINTAINER ch-docker@bobobeach.com

COPY docker-entrypoint-initdb.d/* /docker-entrypoint-initdb.d/
RUN ln -sf /var/run/postgresql/01-davical.sql /docker-entrypoint-initdb.d/
