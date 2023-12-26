Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'products#index'
  resources :products, only: [:new, :show, :index]

  resources :orders, only: [:create, :show, :validation, :validate]
end
