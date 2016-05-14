#!/usr/bin/env bash

if ! [ -e /var/run/ansible-deploy.run ]; then
    echo job is not running
    touch /var/run/ansible-deploy.run

    pass=1
    for i in {1..4}; do
	echo "Hello, I am going to run the ansible JLB Job - Pass $pass"
	time ansible-playbook /var/tmp/nat-to-dns/ansible-play/deploy-stack.yml -e ec2_url=`head -1 /var/tmp/ec2.conf` -e s3_url=`head -1 /var/tmp/s3.conf` -e add_cron=false --skip-tags=packages
	pass=$((pass+1))
    done
    rm -rfv /var/run/ansible-deploy.run
else
    echo "Job is already running - skipping"
    exit 0
fi
