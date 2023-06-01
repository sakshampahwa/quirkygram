Rails.application.routes.draw do
  get 'payment/checkout'
  post 'payment/checkout'
  resources :line_items
  resources :carts
  get 'gallery/index'
  get 'gallery/search'
  post 'gallery/search'
  post 'gallery/index'
  resources :stores
  get 'admin/index'
  get 'admin/login'
  post 'admin/login'
  get 'admin/logout'
  get 'home/index'
  get 'home/contact'
  root 'home#index'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
