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
    end
  end
end



