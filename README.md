# killssh

Test ssh latency with chef-provisioning

## Set up

```
berks vendor cookbooks
export CHEF_DRIVER=aws
chef-client -z recipes/default.rb
knife node -z show sensu_client -a ec2.public_hostname
# get ip
ping $ec2hostname
```
