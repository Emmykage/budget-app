Rails.application.routes.draw do
  devise_for :users, path: ''
  resources :groups do
  resources :contracts
  end
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "splash#index"
end
