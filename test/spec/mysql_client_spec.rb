require 'spec_helper'

describe 'wp-cookbook::default' do
  context 'when usin chef-solo' do
    let(:chef_run) { ChefSpec::SoloRunner.new.converge(described_recipe) }
    it 'installs mysql_client' do
      expect(chef_run).to include_recipe('apt')
      expect(chef_run).to create_mysql_client('default')
    end
  end
  context 'when usin chef-server' do
    let(:chef_run) { ChefSpec::ServerRunner.new.converge(described_recipe) }
    it 'installs mysql_client' do
      expect(chef_run).to include_recipe('apt')
      expect(chef_run).to create_mysql_client('default')
    end
  end
end
