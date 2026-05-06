class ApplicationController < ActionController::Base
  before_action :authenticate_user!, except: [:index, :show]

  # Devise helpers are automatically included, but this is safe:
  protect_from_forgery with: :exception
end