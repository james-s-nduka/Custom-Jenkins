#
# Cookbook:: custom-jenkins
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

include_recipe 'jenkins::master'
include_recipe 'java' unless system('which java')

# Install the latest version of the greenballs plugin
jenkins_plugin 'greenballs' do
  source 'http://updates.jenkins-ci.org/download/plugins/greenballs/1.15/greenballs.hpi'
end

# Install the latest version of the mailer plugin
jenkins_plugin 'mailer' do
  source 'http://updates.jenkins-ci.org/download/plugins/mailer/1.21/mailer.hpi'
end

# Install the latest version of the slack plugin
jenkins_plugin 'slack' do
  source 'http://updates.jenkins-ci.org/download/plugins/slack/2.3/slack.hpi'
  notifies :restart, 'service[jenkins]', :immediately
end
