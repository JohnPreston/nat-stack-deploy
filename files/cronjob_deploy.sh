#!/usr/bin/env bash
for i in {1..4}; do
    ansible-playbook /var/tmp/nat-to-dns/ansible-play/deploy-stack.yml -e ec2_url=`head -1 /var/tmp/ec2.conf` -e s3_url=`head -1 /var/tmp/s3.conf`
    sleep 14
done
