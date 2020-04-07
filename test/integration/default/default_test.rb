# InSpec test for recipe nodejs_nginx::default

# The InSpec reference, with examples and extensive documentation, can be
# found at https://www.inspec.io/docs/reference/resources/

# This is an example test, replace it with your own test.
describe port(80), :skip do
  it { should_not be_listening }
end

describe service('nginx') do
  it {should be_running}
  it {should be_enabled}
end

describe http('http://localhost') do
  its('status') {should cmp 502}
end

describe package('nodejs') do
  it {should be_installed}
  its ('version') { should cmp > '/8\././\././\./' }
end

describe npm('pm2') do
  it {should be_installed}
end

describe npm('react') do
  it {should be_installed}
end
