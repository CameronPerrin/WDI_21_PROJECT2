Rails.application.routes.draw do
  devise_for :users
  resources :items
  root to: "items#index"

  get '/users', to: 'users#index'
  get '/users/:id', to: 'users#show', as: 'user'

end
