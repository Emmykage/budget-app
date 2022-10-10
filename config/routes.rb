Rails.application.routes.draw do
  resources :category_transactions
  resources :transactions
  resources :categories
  resources :users
  root 'categories#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
