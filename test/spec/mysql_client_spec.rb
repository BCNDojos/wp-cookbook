require './test/spec/spec_helper.rb'

describe 'wp-cookbook::default' do
  context 'on Precise with chef-solo' do
    let(:chef_run) { ChefSpec::SoloRunner.new.converge(described_recipe) }
    it 'installs mysql client' do
      expect(chef_run).to include_recipe('apt')
      expect(chef_run).to create_mysql_client('default')
    end
  end
  context 'on CentOS 6 with chef-solo' do
    let(:chef_run) do
      ChefSpec::SoloRunner.new(
        platform: 'centos',
        version: '6.4'
      ).converge(described_recipe)
    end
    it 'installs mysql client' do
      expect(chef_run).not_to include_recipe('apt')
      expect(chef_run).to create_mysql_client('default')
    end
  end
end
