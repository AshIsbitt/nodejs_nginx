#
# Cookbook:: nodejs_nginx
# Spec:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.

require 'spec_helper'

describe 'nodejs_nginx::default' do
  context 'When all attributes are default, on Ubuntu 18.04' do
    # for a complete list of available platforms and versions see:
    # https://github.com/chefspec/fauxhai/blob/master/PLATFORMS.md
    platform 'ubuntu', '18.04'

    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end

    # Install Nginx
    it 'should install nginx' do
      expect(chef_run).to install_package 'nginx'
    end

    # Install NodeJS
    it 'should install nodejs' do
      expect(chef_run).to install_package 'nodejs'
    end

    # start and enable servies
    it 'should enable nginx' do
      expect(chef_run).to enable_service 'nginx'
    end

    it 'should start nginx' do
      expect(chef_run).to start_service 'nginx'
    end



  end
end
