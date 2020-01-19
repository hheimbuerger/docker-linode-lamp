# docker-linode-lamp-with-php5-sqlite

On Docker Hub: [hheimbuerger/linode-lamp-with-php5-sqlite](https://hub.docker.com/r/hheimbuerger/linode-lamp-with-php5-sqlite/)

A fork/subimage of [linode/lamp](https://hub.docker.com/r/linode/lamp/) which includes the package `php5-sqlite` and the `sqlite3` CLI.

Default command is to run Apache in the foreground.

## Usage

Here's how I use this image.

Mount the following volumes to host directories:

* `/www`: to the PHP files to be served, e.g. a phpBB instance
* `/etc/apache2/sites-enabled`: to a directory with an Apache conf file, which in turn makes use of the PHP files in `/www` inside the container
