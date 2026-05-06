require_relative "boot"

require "rails/all"

Bundler.require(*Rails.groups)
require_relative "boot"

require "rails/all"

Bundler.require(*Rails.groups)

module MusicApp
  class Application < Rails::Application
    config.load_defaults 7.1
  end
end
module MusicApp
  class Application < Rails::Application
    config.load_defaults 7.1
  end
end<!DOCTYPE html>
<html>
  <head>
    <title>MusicApp</title>
    <meta name="viewport" content="width=device-width,initial-scale=1">

    <%= csrf_meta_tags %>
    <%= csp_meta_tag %>

    <%= stylesheet_link_tag "application", "data-turbo-track": "reload" %>
    <%= javascript_importmap_tags %>
  </head>

  <body class="app-body">

    <div class="navbar">
      <div class="logo">🎵 MusicApp</div>

      <div class="nav-links">
        <%= link_to "Home", root_path %>

        <% if user_signed_in? %>
          <%= link_to "New Post", new_post_path %>
          <%= link_to "Logout", destroy_user_session_path, data: { turbo_method: :delete } %>
        <% else %>
          <%= link_to "Login", new_user_session_path %>
          <%= link_to "Sign Up", new_user_registration_path %>
        <% end %>
      </div>
    </div>

    <div class="container">
      <%= yield %>
    </div>

  </body>
</html>
