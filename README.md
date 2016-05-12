nat-stack-deploy
================

Deploys the NAT stack configuration on the LB agents

Requirements
------------

EL 6/7

Role Variables
--------------

| Name | Type | Required | Default | Description
|--- |--- |--- |--- |---
| deploy_nat_version | String | True | master | Version of the role


Example Playbook
----------------

```

- hosts:
  - localhost
  roles:
  - nat-stack-deploy

```

License
-------

GPLv3

Author Information
------------------

John Preston [JMille]

