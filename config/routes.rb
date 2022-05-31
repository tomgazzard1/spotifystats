Rails.application.routes.draw do
  get "/", :controller => "tracks", :action => "index"
  resources "places"
  resources "posts"
  resources "sessions"
  resources "users"
  resources "tracks"

  get "/login", :controller => "sessions", :action => "new"
  get "/logout", :controller => "sessions", :action => "destroy"

# config/routes.rb
get '/auth/spotify/callback', to: 'tracks#index'

end
