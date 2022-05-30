Rails.application.routes.draw do
  get "/", :controller => "places", :action => "index"
  resources "places"
  resources "posts"
  resources "sessions"
  resources "users"
  resources "tracks"

  # config/routes.rb
get '/auth/spotify/callback', to: 'users#spotify'

end
