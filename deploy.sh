#!/bin/bash
cd ~/devops-ca-app
npm install
pm2 stop example_app || true
ENV=DEV pm2 start ./bin/www --name example_app