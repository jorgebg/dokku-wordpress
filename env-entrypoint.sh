#!/bin/bash
eval $(php -- <<'EOPHP'
<?php
$url = parse_url(getenv('DATABASE_URL'));
$host = $url['host'];
$user = $url['user'];
$password = $url['pass'];
$name = substr($url['path'], 1);
echo "
export WORDPRESS_DB_HOST=$host
export WORDPRESS_DB_USER=$user
export WORDPRESS_DB_PASSWORD=$password
export WORDPRESS_DB_NAME=$name
";
EOPHP)
/entrypoint.sh "$@"
