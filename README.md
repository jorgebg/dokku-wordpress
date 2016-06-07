# Dokku Wordpress

Wordpress on Dokku using the [official Docker Wordpress repository](https://hub.docker.com/_/wordpress/).


## Installation

Run the following commands (replace `$1` with the app name):

```bash
dokku mysql:create $1.db
dokku mysql:link $1.db
dokku mysql:connect $1.db
dokku storage:mount $1 /var/lib/dokku/data/storage/$1:/var/www/html

git remote add dokku dokku@dokku.me:$1
git push dokku master
```
