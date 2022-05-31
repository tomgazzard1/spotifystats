require 'rspotify/oauth'

# config/initializers/omniauth.rb
Rails.application.config.middleware.use OmniAuth::Builder do
    provider :spotify, "26de21a595844eae9e9f300a1fbba5b1", "8fbafb6e75a54b348a312325e698a8d2", scope: 'user-read-email user-top-read user-read-recently-played user-library-read'
  end
  
  OmniAuth.config.allowed_request_methods = [:post, :get]