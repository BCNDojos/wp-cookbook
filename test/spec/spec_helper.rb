require 'chefspec'
require 'chefspec/berkshelf'

RSpec.configure do |config|
  # Specify the path for Chef Solo to find cookbooks (default: [inferred from
  # the location of the calling spec file])
  config.cookbook_path = File.dirname(
    File.dirname(File.dirname(File.expand_path(File.dirname(__FILE__)))))
end
