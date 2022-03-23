#!/bin/bash
sudo -i -u postgres pg_dumpall -U postgres | sudo tee /mnt/backups/postgres_all-$(date +"%m-%d-%Y-%H-%M").sql > /dev/null && wget https://healthchecks.k8s.aml.ink/ping/ea26d793-69e5-4c4d-bf82-c825d66b0802 -q -T 10 -t 5 -O /dev/null
# Clean the directory up and keep only the last 6
cd /mnt/backups/ && ls -tp *.sql| grep -v '/$' | tail -n +6  | sudo xargs -I {} rm -- {}
