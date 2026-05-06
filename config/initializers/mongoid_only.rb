# Disable ActiveRecord completely
Rails.application.config.to_prepare do
  if defined?(ActiveRecord)
    ActiveRecord::Base.connection_handler.clear_all_connections! rescue nil
  end
end

# Prevent Rails from loading database configs
module Rails
  class Application
    class Configuration
      def database_configuration
        {}
      end
    end
  end
end