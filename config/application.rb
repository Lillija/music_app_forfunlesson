require_relative "boot"

require "rails"
require "action_controller/railtie"
require "action_view/railtie"
require "action_mailer/railtie"
require "active_job/railtie"
require "active_storage/engine"
require "action_cable/engine"

# ❌ MUST NOT EXIST:
# require "active_record/railtie"

Bundler.require(*Rails.groups)

module MusicApp
  class Application < Rails::Application
    config.load_defaults 7.1

    config.generators do |g|
      g.orm :mongoid
    end
  end
end