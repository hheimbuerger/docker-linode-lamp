FROM linode/lamp:latest

# install missing php5-sqlite package
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && apt-get install -y \
    sqlite3 php5-sqlite && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# fix permission for certain directories possibly mapped as volumes
RUN mkdir /www
RUN chown -R www-data:www-data /www

# run MySQL in the background and Apache in the foreground
CMD apache2ctl -e DEBUG -DFOREGROUND
