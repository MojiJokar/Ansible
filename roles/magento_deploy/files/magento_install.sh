#!/bin/bash

# Install Magento CLI
wget https://github.com/magento/magento2/archive/$MAGENTO_VERSION.tar.gz
tar -xzf $MAGENTO_VERSION.tar.gz
mv magento2-$MAGENTO_VERSION magento2
cd magento2

# Install Magento (simplified for demo)
php bin/magento setup:install \
  --db-host="$MAGENTO_DB_HOST" \
  --db-name="$MAGENTO_DB_NAME" \
  --db-user="$MAGENTO_DB_USER" \
  --db-password="$MAGENTO_DB_PASSWORD" \
  --admin-firstname="Admin" \
  --admin-lastname="User" \
  --admin-email="admin@example.com" \
  --admin-user="$MAGENTO_ADMIN_USER" \
  --admin-password="$MAGENTO_ADMIN_PASSWORD" \
  --base-url="http://localhost" \
  --backend-frontname="admin"

# Set permissions
chmod -R 777 var pub
