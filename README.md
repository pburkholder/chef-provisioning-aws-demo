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

Use comcast to add latency:
```
comcast --device=en6 --latency=250
```

No failures even with machine_batch.

```
sudo comcast --packet-loss=10% --target-addr=54.85.153.244,54.84.206.129,52.91.249.35,52.23.229.16,52.91.210.234,52.23.160.190
```
