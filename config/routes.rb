# frozen_string_literal: true

Rails.application.routes.draw do
  resources :group_purchases
  resources :groups, only: %i[index new create]

  resources :purchases, only: %i[index new create]

  root 'groups#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
