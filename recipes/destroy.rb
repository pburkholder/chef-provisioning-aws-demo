#
# Cookbook Name:: killssh
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

with_machine_options bootstrap_options: {
  instance_type: 't2.micro',
  image_id: 'ami-dc5e75b4',
  security_group_ids: ['sg-2ee7694b' ],
  key_name: 'pburkholder-one'
}

machine 'sensu_client_0' do
  action :destroy
end

machine_batch 'sensu-batch' do
  1.upto(5) do |n|
    machine "sensu_client_#{n}" do
      action :destroy
    end
  end
  action :destroy
end
