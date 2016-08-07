Rails.application.routes.draw do
  resources :categories
  get 'static_pages/home'

  get 'static_pages/info'

  devise_for :users
  resources :items
  root to: "static_pages#home"

  get '/users', to: 'users#index'
  get '/users/:id', to: 'users#show', as: 'user'

end
