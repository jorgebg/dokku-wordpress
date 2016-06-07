# Dokku Wordpress

Wordpress on [Dokku](http://dokku.viewdocs.io/) using the [official Docker Wordpress repository](https://hub.docker.com/_/wordpress/).


## Recommended installation

Run the following commands (replace `$1` with the app name):

```bash
# dokku.me
dokku mysql:create $1.db
dokku mysql:link $1.db
dokku mysql:connect $1.db
dokku storage:mount $1 /var/lib/dokku/data/storage/$1:/var/www/html

# localhost
git remote add dokku dokku@dokku.me:$1
git push dokku master
```

## Thanks

Thanks to [@josegonzalez](https://github.com/josegonzalez) that suggested calling the [parent `entrypoint`](https://github.com/docker-library/wordpress/blob/master/apache/Dockerfile#L33).
