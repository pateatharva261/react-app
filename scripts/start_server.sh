#!/bin/bash

echo "Starting Nginx..."

# Configure Nginx
cat <<EOF > /etc/nginx/conf.d/react-app.conf
server {
    listen 80;
    server_name _;

    root /var/www/react-app;
    index index.html;

    location / {
        try_files \$uri /index.html;
    }
}
EOF

systemctl restart nginx
systemctl enable nginx