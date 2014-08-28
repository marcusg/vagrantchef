require 'spec_helper'

describe package('nload') do
  it { should be_installed }
end

describe package('htop') do
  it { should be_installed }
end

