# # encoding: utf-8

# Inspec test for recipe chef-mongodb::install_apt_repo

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

# Same test as default

describe package('mongodb-org') do
  it { should be_installed }
end

describe port(27017) do
  it { should be_listening }
end