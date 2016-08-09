Rails.application.routes.draw do
  resources :categories
  
  get 'static_pages/home'

  get 'static_pages/info'

  get 'static_pages/cart'

  devise_for :users
  resources :items do 
    member do
      post :add_to_wishlist
      put :add_to_wishlist
      post :add_to_cart
      put :add_to_cart
    end
  end
  resources :wishlists
  resources :carts
  root to: "static_pages#home"


  get '/users', to: 'users#index'
  get '/users/:id', to: 'users#show', as: 'user'

end
