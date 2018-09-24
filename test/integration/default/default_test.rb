# Inspec test for recipe custom-jenkins::default

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

unless os.windows?
  # This is an example test, replace with your own test.
  describe user('root'), :skip do
    it { should exist }
  end
end

describe user('jenkins') do
  it { should exist }
end

describe port(80), :skip do
  it { should_not be_listening }
end

describe port(8080) do
  it { should be_listening }
end

describe package('jdk1.8.x86_64') do
  it { should be_installed }
end

describe package('jenkins.noarch') do
  it { should be_installed }
  its('version') { should cmp >= '2.138.1-1.1' }
end

describe service 'jenkins' do
  it { should be_running }
  it { should be_enabled }
end
