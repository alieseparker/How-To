require File.expand_path('../boot', __FILE__)

require 'rails/all'
Bundler.require(*Rails.groups)

module HowTo
  class Application < Rails::Application
  end
end
