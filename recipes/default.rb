#
# Cookbook:: custom-jenkins
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

include_recipe 'jenkins::master'

# Install java which is required for jenkins if the machine doesn't already have it available
include_recipe 'java' unless system('java -version')

# Install the latest version of the greenballs plugin
jenkins_plugin 'greenballs' do
  source 'http://updates.jenkins-ci.org/download/plugins/greenballs/1.15/greenballs.hpi'
end

# Install the latest version of the display-url-api plugin
jenkins_plugin 'display-url-api' do
  source 'http://updates.jenkins-ci.org/download/plugins/display-url-api/2.0/display-url-api.hpi'
end

# Install the latest version of the junit plugin
jenkins_plugin 'junit' do
  source 'http://updates.jenkins-ci.org/download/plugins/junit/1.25/junit.hpi'
end

# Install the latest version of the icon-shim plugin
jenkins_plugin 'icon-shim' do
  source 'http://updates.jenkins-ci.org/download/plugins/icon-shim/2.0.2/icon-shim.hpi'
end

# Install the latest version of the credenials plugin
jenkins_plugin 'credentials' do
  source 'http://updates.jenkins-ci.org/download/plugins/credentials/2.1.18/credentials.hpi'
end

# Install the latest version of the plain-credentials plugin
jenkins_plugin 'plain-credentials' do
  source 'http://updates.jenkins-ci.org/download/plugins/plain-credentials/1.4/plain-credentials.hpi'
end

# Install the latest version of the workflow-step-api plugin
jenkins_plugin 'workflow-step-api' do
  source 'http://updates.jenkins-ci.org/download/plugins/workflow-step-api/2.16/workflow-step-api.hpi'
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
