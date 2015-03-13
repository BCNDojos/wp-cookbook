require 'chefspec'

RSpec.configure do |conf|
  # Specify cookbook path for Chef
  current_path = File.expand_path(File.dirname(__FILE__))
  conf.cookbook_path = File.dirname(current_path + '/../../..')
end
