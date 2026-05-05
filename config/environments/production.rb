Rails.application.configure do
  config.enable_reloading = false
  config.eager_load = true

  config.consider_all_requests_local = false
  config.action_controller.perform_caching = true

  config.public_file_server.enabled = ENV["RAILS_SERVE_STATIC_FILES"].present?

  config.log_level = :info
  config.log_tags = [ :request_id ]

  config.i18n.fallbacks = true

  config.active_support.report_deprecations = false

  config.action_mailer.perform_caching = false
end