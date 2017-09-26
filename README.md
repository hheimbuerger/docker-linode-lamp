# docker-linode-lamp

On Docker Hub: [hheimbuerger/linode-lamp-with-php5-mysql](https://hub.docker.com/r/hheimbuerger/linode-lamp-with-php5-mysql/)

A fork/subimage of [linode/lamp](https://hub.docker.com/r/linode/lamp/) which includes `php5-mysql`.

Runs MySQL in the background and Apache in the foreground.

## Usage

Here's how I use this image.

Mount the following volumes to host directories:
	
* `/var/lib/mysql`: to a MySQL data directory
* `/www`: to the PHP files to be served, e.g. a phpBB instance
* `/etc/apache2/sites-enabled`: to a directory with an Apache conf file, which in turn makes use of the PHP files in `/www` inside the container
