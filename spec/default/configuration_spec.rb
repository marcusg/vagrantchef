require 'spec_helper'

describe user('deploy') do
  it { should exist }
  it { should belong_to_group("deploy") }
  it { should have_authorized_key "#{`cat ~/.ssh/id_rsa.pub`}" }
end

describe user('root') do
  it { should exist }
  it { should have_authorized_key "#{`cat ~/.ssh/id_rsa.pub`}" }
end
