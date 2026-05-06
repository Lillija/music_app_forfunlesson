require_relative "boot"

require "rails"

# Only load what you actually need (NO ActiveRecord)
require "active_model/railtie"
require "active_job/railtie"
require "action_controller/railtie"
require "action_view/railtie"
require "action_mailer/railtie"
require "action_cable/engine"
require "rails/test_unit/railtie"

Bundler.require(*Rails.groups)

module MusicApp
  class Application < Rails::Application
    config.load_defaults 7.1

    # Keep it simple for Mongoid apps
    config.generators do |g|
      g.orm :mongoid
    end
  end
end