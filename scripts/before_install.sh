#!/bin/bash

echo "Stopping Nginx if running..."
systemctl stop nginx || true

echo "Cleaning old files..."
rm -rf /var/www/react-app