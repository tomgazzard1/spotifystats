class TracksController < ApplicationController
#require 'rspotify'
require 'rspotify/oauth'

# config/application.rb
RSpotify.authenticate("26de21a595844eae9e9f300a1fbba5b1", "8fbafb6e75a54b348a312325e698a8d2")
# config/initializers/omniauth.rb
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :spotify, "26de21a595844eae9e9f300a1fbba5b1", "8fbafb6e75a54b348a312325e698a8d2", scope: 'user-read-email user-top-read user-read-recently-played user-library-read'
end

OmniAuth.config.allowed_request_methods = [:post, :get]
        
    def index
        spotify_user = RSpotify::User.find('1251329358')
        puts spotify_user.inspect
        #spotify_user = RSpotify::User.new(request.env['omniauth.auth'])
        #@top_tracks = spotify_user.top_tracks #(((limit: 10, offset: 0, time_range: 'short_term')))
    end

end
