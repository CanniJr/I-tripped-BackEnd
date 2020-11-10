Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :show, :create, :update, :destroy]
      resources :trips, only: [:index, :show, :create, :update, :destroy]
      resources :places
      post '/login', to: 'auth#create'
      get '/profile', to: 'users#profile'
    end
  end
end
