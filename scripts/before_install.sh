#!/bin/bash

echo "Stopping Nginx if running..."
systemctl stop httpd || true

echo "Cleaning old files..."
rm -rf /var/www/html