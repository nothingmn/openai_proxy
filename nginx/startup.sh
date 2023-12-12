#!/bin/bash
set -e
sed -i "s/\$OPENAI_API_KEY/"$OPENAI_API_KEY"/" /etc/nginx/nginx.conf
cat /etc/nginx/nginx.conf

#allow the caller to hijack our entry point
if [ -n "$1" ] && [ -f "$1" ]; then
	echo "hijacking with $1"
	exec "$@"
else
	echo "nginx starting up"
	nginx -g "daemon off;" -c "/etc/nginx/nginx.conf"    
fi