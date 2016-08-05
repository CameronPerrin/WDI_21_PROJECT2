Rails.application.routes.draw do
  get 'users/index'

  get 'users/show'

  devise_for :users
  resources :items
  root to: "items#index"

end
