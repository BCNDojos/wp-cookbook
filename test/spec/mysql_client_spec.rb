require './test/spec/spec_helper.rb'

describe 'wp-cookbook::default' do
  context 'on Precise with chef-solo' do
    let(:chef_run) { ChefSpec::SoloRunner.new.converge(described_recipe) }
    it 'installs mysql client' do
    end
  end
end
