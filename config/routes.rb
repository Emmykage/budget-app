# frozen_string_literal: true

Rails.application.routes.draw do
  resources :contracts
  resources :groups, only: %i[index show new create] do
    resources :purchases, only: %i[index new create]
  end

  root 'groups#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
