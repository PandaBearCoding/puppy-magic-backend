Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :users
      # post '/login', to: 'auth#create'
      get '/login', to: 'users#login'
      get '/signup', to: 'users#create'
      get "/users/:id/matches", to: "users#matches"
      get "/users/:id/matches/:id", to: "matches#show"
      post "/users/:id/matches", to: "matches#create"
      delete "/users/:id/matches/:id", to: "matches#destroy"

      get "/users/:id/location_preferences", to: "users#location_preferences"
      get "/users/:id/location_preferences/:id", to: "location_preferences#show"
      post "/users/:id/location_preferences", to: "location_preferences#create"
      delete "/users/:id/location_preferences/:id", to: "location_preferences#destroy"

      get "/users/:id/distance_preferences", to: "users#distance_preferences"
      get "/users/:id/distance_preferences/:id", to: "distance_preferences#show"
      post "/users/:id/distance_preferences", to: "distance_preferences#create"
      delete "/users/:id/distance_preferences/:id", to: "distance_preferences#destroy"
    end
  end

  namespace :api do
    namespace :v1 do
      resources :dogs
    end
  end
end



