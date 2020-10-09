Rails.application.routes.draw do
  devise_for :users
  root 'home#index'
  resources :users, only: [:edit,:show,:update]
  resources :posts, only: [:new,:create]
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
