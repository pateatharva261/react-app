#!/bin/bash

echo "Starting Nginx..."

# Configure Apache
systemctl restart httpd
systemctl enable httpd