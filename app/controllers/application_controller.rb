class ApplicationController < ActionController::API
  include ActionController::HttpAuthentication::Basic::ControllerMethods

  http_basic_authenticate_with name: ENV['AUTH_NAME'], password: ENV['AUTH_PASSWORD'], except: :index
end
