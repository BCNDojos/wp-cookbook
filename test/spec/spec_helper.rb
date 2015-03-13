require 'chefspec'

RSpec.configure do |config|
  # Specify cookbook path for Chef
  current_path = File.expand_path(File.dirname(__FILE__))
  config.cookbook_path = File.dirname(current_path + '/../../..')
  # Let's suppose Ubuntu 12.04 by default
  config.platform = 'ubuntu'
  config.version = '12.04'
end
