class TracksController < ApplicationController
#require 'rspotify'
        
    def index
      @spotify_user = RSpotify::User.new(request.env['omniauth.auth'])
      # Now you can access user's private data, create playlists and much more
  
      # Get user's top played artists and tracks
      @spotify_user.top_artists #=> (Artist array)
      puts @spotify_user.inspect
      @top_artists = @spotify_user.top_artists
      @spotify_user.top_tracks(time_range: 'short_term') #=> (Track array)
      @top_tracks = @spotify_user.top_tracks
    end

end
