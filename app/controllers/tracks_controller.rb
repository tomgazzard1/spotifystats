class TracksController < ApplicationController
require 'rspotify'
RSpotify.authenticate("26de21a595844eae9e9f300a1fbba5b1", "8fbafb6e75a54b348a312325e698a8d2")
        
    def index
        me = RSpotify::User.find('1251329358')
        @top_tracks = me.top_tracks(((limit: 10, offset: 0, time_range: 'short_term')))
    end

end
