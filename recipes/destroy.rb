#
# Cookbook Name:: killssh
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

machine 'sensu_client' do
  action :destroy

  add_machine_options bootstrap_options: {
    instance_type: 't2.micro',
    image_id: 'ami-dc5e75b4',
    security_group_ids: ['sg-2ee7694b' ],
    key_name: 'pburkholder-one'
  }
end
